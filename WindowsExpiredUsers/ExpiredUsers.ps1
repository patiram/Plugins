# TODO:
# Consolidate both scripts into one, eliminate the redundant timestamp
# and Host IP from sent syslog messages.

# DEFINE SYSLOG DESTINATION
$logdestination = "172.20.1.180"
$log_programname = "WindowsExpiredUsers: "

# Calculate the UTC time 90 days ago, in FileTime (Integer) format and convert it to a string
$LLTSlimit = (Get-Date).AddDays(-90).ToFileTimeUTC().ToString()

# Create the LDAP filter for the AD query
# Searching for enabled computer accounts which have lastLogonTimestamp older than 90 days
$LDAPFilter = "(&(objectCategory=User)(lastlogontimestamp<=$LLTSlimit) (!(userAccountControl:1.2.840.113556.1.4.803:=2)))"

# Create an ADSI Searcher to query AD
$Searcher = new-object DirectoryServices.DirectorySearcher([ADSI]"")
$Searcher.filter = $LDAPFilter

# Execute the query
$Accounts = $Searcher.FindAll()

# Process the results
If ($Accounts.Count –gt 0) {

# Create an array to store all the results
$Results = @()

# Loop through each account
ForEach ($Account in $Accounts) {

# Create an object to store this account in
$Result = "" | Select-Object Name,lastLogonTimestamp

# Add the name to the object as a string
$Result.Name = [String]$Account.Properties.name

# Add the lastLogonTimestamp to the object as a readable date
$Result.lastLogonTimestamp = `
[DateTime]::FromFileTime([Int64]::Parse($Account.Properties.lastlogontimestamp))

# Add this object to our array
$Results = $Results + $Result

}

}


#
# Example: $logger = SyslogSenderUdp syslogserver.local
#          $logger.Send("Apr  1 14:14:41", "myhost", "Logger test message"
#
# Send has the following parameters
#          $timestamp, $hostname, $data, $facility = "user", $severity = "info"
#

$dest_host = "172.20.1.180"
Function SyslogSenderUdp
{
    param
    (
        [String]$dest_host = $logdestination
    )
    
    $SSU = New-Object PSObject
    $SSU | Add-Member -MemberType NoteProperty -Name _UdpClient -Value $null
    $SSU | Add-Member -MemberType ScriptMethod -Name init -Value {
        param
        (
            [String]$dest_host = $logdestinations,
            [Int32]$dest_port = 514
        )
        $this._UdpClient = New-Object System.Net.Sockets.UdpClient
        $this._UdpClient.Connect($dest_host, $dest_port)
    }
    
    $SSU | Add-Member -MemberType ScriptMethod -Name Send -Value {
        param
        (
            [String]$timestamp = $(throw "Error SyslogSenderUdp:init; Timestamp must be given."),
            [String]$hostname = $(throw "Error SyslogSenderUdp:init; Hostname must be given."),
            [String]$data = $(throw "Error SyslogSenderUdp:init; Log data must be given."),
            [String]$facility = "user",
            [String]$severity = "info"
        )
        $facility_map = @{  "kern" = 0;
                            "user" = 1;
                            "mail" = 2;
                            "daemon" = 3;
                            "security" = 4;
                            "auth" = 4;
                            "syslog" = 5;
                            "lpr" = 6;
                            "news" = 7;
                            "uucp" = 8;
                            "cron" = 9;
                            "authpriv" = 10;
                            "ftp" = 11;
                            "ntp" = 12;
                            #"logaudit" = 13;
                            #"logalert" = 14;
                            "clock" = 15;
                            "local0" = 16;
                            "local1" = 17;
                            "local2" = 18;
                            "local3" = 19;
                            "local4" = 20;
                            "local5" = 21;
                            "local6" = 21;
                            "local7" = 23;
                        }
    
        $severity_map = @{  "emerg" = 0;
                            "panic" = 0;
                            "alert" = 1;
                            "crit" = 2;
                            "error" = 3;
                            "err" = 3;
                            "warning" = 4;
                            "warn" = 4;
                            "notice" = 5;
                            "info" = 6;
                            "debug" = 7;
                            }

        # Map the text to the decimal value
        if ($facility_map.ContainsKey($facility))
        {
            $facility_num = $facility_map[$facility]
        }
        else
        {
            $facility_num = $facility_map["user"]
        }
        
        if ($severity_map.ContainsKey($severity))
        {
            $severity_num = $severity_map[$severity]
        }
        else
        {
            $severity_num = $severity_map["user"]
        }
        
        # Calculate the PRI code
        $pri = ($facility_num * 8) + $severity_num
        
        # Get a properly formatted, encoded, and length limited data string
        $message = "<{0}>{1} {2} {3}" -f $pri, $timestamp, $hostname, $data
        Write-Host $message
        $enc     = [System.Text.Encoding]::ASCII
        $message = $Enc.GetBytes($message)
            
        if ($message.Length -gt 1024)
        {
            $message = $message.SubString(0, 1024)
        }
        
        # Fire away
        $this._UdpClient.Send($message, $message.Length)
    }
    
    $SSU.init($logdestination)
    
    # Emit the newly built object
    $SSU
}

# Output the results

#$Results | Format-Table -autosize
$Results | Out-File c:\ListOfDeadAccounts.txt

$logger = SyslogSenderUdp syslogserver.local

ForEach ($Result in $Results) {
$LogLine = $log_programname + $Result
$logger.Send((Get-Date), $logdestination, $LogLine)
}