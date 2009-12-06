#!/usr/bin/perl

use lib '/inervo/lib/';
use Inervo::DBI;

use strict;

my $db = Inervo::DBI->new( default_db => 'wiki' );

print "content-type: text/html\n\n";

scatterplot($db);


exit;

sub scatterplot {
  my ($db) = @_;

  my $data = {};

  my $sth = $db->executeStatement("SELECT SATverbal + SATmath + SATwriting AS sat, attendancePercentage, overallStatus FROM aypdata WHERE overallStatus IN ('MET', 'NOT MET') HAVING sat > 0 LIMIT 10");
  return undef unless ( $sth && $sth->rows() );
print STDERR "pulling rows\n";
  while (my ($sat, $attendance, $overall) = $sth->fetchrow_array) {
print "$sat / $attendance\n";
    push @{$data->{$overall}}, [$sat, $attendance];
  }
print STDERR "done pulling rows\n";

print STDERR "looping/shifting\n";
  my $url = '';
  my @data;
  #my @max;
  while (my $entry = shift @{$data->{MET}}) {
    my ($x, $y) = @$entry;
#print "$x / $y\n"; exit;
    push @{$data[0]}, $x;
    #if ($x > $max[0]) { $max[0] = $x; }

    push @{$data[1]}, $y;
    #if ($y > $max[1]) { $max[1] = $y; }
  }

  #while (my ($x, $y) = shift @{$data->{NOT MET}}) {
  while (my $entry = shift @{$data->{'NOT MET'}}) {
    my ($x, $y) = @$entry;
    push @{$data[2]}, $x;
    #if ($x > $max[2]) { $max[2] = $x; }

    push @{$data[3]}, $y;
    #if ($y > $max[3]) { $max[3] = $y; }
    #if ($y < $min[3] || ! $min[3]) { $min[3] = $y; }
  }

  my @maxlist;
  #foreach my $m (@max) {
  #  push @maxlist, 0;
  #  push @maxlist, $m;
  #}
print STDERR "done looping/shifting\n";

  my @chds;
  foreach my $n (0..3) {
print "n: $n\n";
    push @chds, min(@{$data[$n]});
    push @chds, max(@{$data[$n]});
  }

  my $url = 'chd=t:' . join('|', join(',', @{$data[0]}), join(',', @{$data[1]}), join(',', @{$data[2]}), join(',', @{$data[3]})) . '&chds=' . join(',', @chds);
  print "URL: $url\n";

}


sub max {
  my $max = shift @_;

  while (my $x = shift @_) {
    if ($x > $max) { $max = $x; }
  }

  return $max;
}

sub min {
  my $min = shift @_ || '0';

  while (my $x = shift @_) {
    if ($x < $min) { $min = $x; }
  }

  return $min;
}
