use ModSecParser;

open(S, "<modsec.sample");
while ( my $line = <S>) { $body .= $line;} 
$mp = ModSecParser->new(); $mp->body($body); 
$mp->parse; print $mp->output("%header+http|%header+host|%http_status") . "\n";
