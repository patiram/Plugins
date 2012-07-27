#!/usr/bin/env perl
# vim: ts=2 sw=2 ai et
use Mojolicious::Lite;
use Data::Dumper;
use Digest::MD5;
use ModSecParser;
use MIME::Base64;

# Documentation browser under "/perldoc"
plugin 'PODRenderer';

put '/rpc/auditLogReceiver' => sub {
  my $self = shift;
  my $status;
  my $config = plugin('Config');
  my $format = $config->{format} || 
                '%auditheader|%header+http|%header+host|%response+http|%trailer+action|%trailer+message';

  my $content_hash = $self->req->headers->header('x-content-hash') // undef;
  $content_hash    =~ s/md5:(.*)\s+$/$1/;

  my $content_len  = $self->req->headers->header('content-length') // undef;
  my $summary      = $self->req->headers->header('x-forensiclog-summary') // undef;
  my $authentication = $self->req->headers->header('authorization') // undef;

  if ( ! $authentication ) {
    $status = 403;
  }
  else {
    ### strip basic header, assume it's basic anyway
    $authentication =~ s/Basic\s+//g;
    my $decoded_auth = decode_base64($authentication);
    my ($user, $pass) = split(/:/, $decoded_auth);
    $self->app->log->debug("Username: $user, Pass: $pass");
    
    if ( $user ne $config->{user} || $pass ne $config->{password} ) {
      $self->app->log->debug("Authorization failed"); 
      $status = 403;
    }
    elsif ($user eq $config->{user} && $pass eq $config->{password} ) {
      $self->app->log->debug("Authorization ok"); 
    }
  }

  my $body         = $self->req->body;


  my $digest = Digest::MD5->new;
  $digest->add($body);
  my $hexdigest = $digest->hexdigest;

  $self->app->log->debug("Content-Hash: $content_hash");
  $self->app->log->debug("Calculated digest: " . $hexdigest);
  $self->app->log->debug("Forensic Summary: $summary");
  $self->app->log->debug("Content-Length: $content_len");
  $self->app->log->debug("Body length: " . length $body);

  if ( length $body != int $content_len ) {
    $self->app->log->error("Content length mismatch");
	  $status = 409;
  }
  elsif ( $content_hash ne $hexdigest ) {
    $self->app->log->error("Digest mismatch: '$content_hash' - '$hexdigest'");
    $status = 409;
  }
  else {
    $status = 200;
  }

  $self->app->log->debug("Headers: " . Dumper($self->req->headers));
  $self->app->log->debug("Body: " . Dumper($self->req->body));

  ### valid
  if ( $status == 200 ) {
    # ok, let's do the logging

    ### here's the parsing
    my $mp = ModSecParser->new();
    $mp->body($self->req->body);
    $mp->parse();
    my $output = $mp->output($format);

    $self->app->datalog->log->info($output);
    $self->app->log->debug($mp->dump);
  }

  $self->respond_to(
    any => { data => '', status => $status },
  );
};

our $config = plugin('Config');
my $datalog = $config->{logfile} // '/var/log/modsecurity.log';
my $syslog  = $config->{systemlog} // '/var/log/modsec_collector.log';
my $loglevel= $config->{loglevel} // 'info';
my $pid_file = $config->{pid_file} // '/var/run/modsec_collector.pid';
my $port    = $config->{port} // 8765;

app->log->path($syslog);
app->log->level($loglevel);

app->attr(
  datalog => sub { Mojo::Log->new( path => $datalog, level => 'info') } );

app->config(hypnotoad => {
              listen => ["https://*:$port"],
              pid_file => $pid_file,
            });
app->start;
