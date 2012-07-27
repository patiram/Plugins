package ModSecParser;
# vim: ts=2 sw=2 ai et

use Data::Dumper;

=pod

=head1 NAME

ModSecParser

=head1 METHODS

=head3 new()

Instantiates a ModSecParser object.

=cut

our $allowed_keys = qr/(response|request|auditheader|header|trailer|http_status|ruleid)/; 

sub new {
  my $class = shift;
  my $self = {};
 return bless $self, $class;
}

sub body {
  my $self = shift;
  if (@_) {
    $self->{body} = shift;
  }
  return $self->{body};
}

sub error {
  my $self = shift;
  if (@_) {
    $self->{error} = shift;
  }
  return $self->{error};
}

=pod

=head3 parse()

Parses the modsecurity audit log. Creates a key called 'parsed' in the 
underlying hash that contains all the parsed lines and values.

The audit log is only broken into sections, every line represents a attribute
in that section.

The sections available from modsecurity are:

=over 4

=item A

Audit log header (mandatory)

=item B

Request headers

=item C

Request body (present only if the request body exists and ModSecurity is configured to intercept it)

=item D

RESERVED

=item E

Intermediate Response body, parsed, but not available via methods.

=item F

Final response header, available via method response.

=item G

RESERVED

=item H

Audit log trailer, available via trailer() method.

=item Z

=back

=cut

sub parse {
  my $self = shift;
  my $body = $self->body;

  return 0 if (!$body);

  my @lines;
  if (ref($body) eq "ARRAY") {
    @lines = @$body; 
  }
  else {
    @lines = split('\n', $body);
  }

  my $signature = $lines[0];
  $signature =~ s/^--([^-]+)-.*/$1/;
  
  if ( $lines[$#lines] !~ /^--$signature-Z--$/ ) {
    $self->error("Missing boundary");
  }

  my $section;

  foreach my $line (@lines) {
    if ( $line =~ /--$signature-([A-Z])--/ ) {
      $section = $1;
    }
    else {
      push( @{$self->{parsed}->{$section}}, $line );
    }
  }
  return $self;
}

=pod

=head3 trailer(header_keyword)

This will extract trailer messages from the ModSecParser object.
Will accept a header keyword, that specifies which part from the audit
log to return.
Typically this will be "message" or "action".

=cut

sub trailer {
  my $self = shift;
  my $trailer = $self->{parsed}->{H};
  my $arg  = "message";
  if (@_) {
    $arg = shift;
  }
  foreach my $line ( @$trailer ) {
    return $line if ( $line =~ /^$arg/i);
  }
}

=pod

=head3 reponse(header_keyword)

This will extract response messages from the ModSecParser object.
Will accept a header keyword, that specifies which part from the audit
log to return.
Typically this will be "http" or a well known HTTP header.

=cut

sub response {
  my $self = shift;
  my $response = $self->{parsed}->{F};
  my $arg  = "http";
  if (@_) {
    $arg = shift;
  }

  foreach my $line ( @$response ) {
    return $line if ( $line =~ /^$arg/i );
  }
}

=pod

=head3 header(header_keyword)

This will extract header messages from the ModSecParser object.
Will accept a header keyword, that specifies which part from the audit
log to return.
Typically this will be "http" or a well known HTTP header.

=cut

sub header {
  my $self = shift;
  my $response = $self->{parsed}->{B};
  my $arg  = "http";
  if (@_) {
    $arg = shift;
  }

  if ( $arg eq 'http' ) {
    return $response->[0];
  }

  foreach my $line ( @$response ) {
    return $line if ( $line =~ /^$arg/i );
  }

}

=pod

=head3 auditheader()

This will return the one line audit header from the auditlog entry.

=cut

sub auditheader {
  my $self = shift;
  return $self->{parsed}->{A}->[0];
}

=pod

=head3 request(header_keyword)

This will extract request messages from the ModSecParser object.
Will accept a header keyword, that specifies which part from the audit
log to return.
Typically this will be "http" or a well known HTTP header.

=cut

sub request {
  my $self = shift;
  my $request = $self->{parsed}->{C};
  my $arg  = "http";
  if (@_) {
    $arg = shift;
  }

  if ( $arg eq "http" ) {
    return $request->[0]
  }

  foreach my $line ( @$request ) {
    return $line if ( $line =~ /^$arg/i );
  }
}

=pod

=head3 http_status()

Extract the HTTP status code out of the response header.

=cut

sub http_status {
  my $self = shift;
  my $header = $self->response();
  $header =~ s/^HTTP\S+\s+(\d+).*/$1/;
  return $header;
}

=pod

=head3 ruleid()

Extract the modsecurity rule id.

=cut

sub ruleid {
  my $self = shift;
  my $rule = $self->trailer('message');
  $rule =~ s/^.*\[id "(\d+)"\]/$1/;
  return $rule;
}

sub format {
  my $self = shift;
  my $format = shift;

  my @keys = split(/\+/, $format); 
  my $txt;

  if ( $keys[0] =~ /$allowed_keys/ ) {
    my $section = $keys[0]; 
    my $txt = eval { $self->$section($keys[1]); };
    if ($@) {
      return "%$format-error: $@";
    }
    else {
      if ( $txt eq '' ) {
        $txt = "";
      }
      return $txt;
    }
  }
}

sub dump {
  my $self = shift;
  return Dumper($self);
}

sub output {
  my $self = shift;
  my $formatstring = shift;

  $formatstring =~ s/%([^\|]+|\S+)/$self->format($1)/eg;
  return $formatstring;
}

1;
