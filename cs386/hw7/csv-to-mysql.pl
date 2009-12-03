#!/usr/bin/perl

use Data::Dumper;
use strict;

use constant BASEDIR => '/home/tedt/git/pdx-edu/cs386/hw7/data/';
use constant RCFILE => BASEDIR . 'RCmediaSchoolsAggregate.csv';
use constant AYPFILE => BASEDIR . 'AYPmediaSchools.csv';

my $data = {};

# read
readRCFile(RCFILE, $data);
readAYPFile(AYPFILE, $data);

# parse
specialExceptions($data);
validateInput($data);

# output


exit;

# Random one-offs, such as deleting entries before they get errorchecked.
sub specialExceptions {
  my ($data) = @_;

  # remove Oregon Virtual Academy
  delete $data->{4690};

  # remove Baker Web Academy
  delete $data->{4728};

}

# Loop through the input, change values to match SQL specification,
# make sure there aren't any incomplete entries.
#
sub validateInput {
  my ($data) = @_;

  # We'll bail when done, if there are errors.
  my $error = 0;

  while (my ($schoolID, $row) = each %$data) {

    # check numbers
    foreach my $tag (qw(graduationPercentage attendancePercentage dropoutPercentage SATmath SATverbal SATwriting SATtakenPercentage teachersFTE)) {
      if ($row->{$tag} !~ /^[\d\.]+$/) {
        $row->{$tag} = 0;
      }
    }

    # check for empty fields that shouldn't be
    foreach my $tag (qw(districtName schoolID schoolName county)) {
      if (! $row->{$tag}) {
        ++$error;
        print STDERR "missing $tag for schoolid: $schoolID\n";
print Dumper($row);
      }
    }

    # map 'Y' -> 'YES'
    if (lc $row->{titlei} eq 'y') {
      $row->{titlei} = 'YES';
    } elsif (lc $row->{titlei} eq 'n') {
      $row->{titlei} = 'NO';
    } else {
      ++$error;
      print STDERR "invalid input for titlei ($$row{titlei}), schoolid: $schoolID\n";
    }

  }

  if ($error) {
    print STDERR "bailing, errors found.\n";
    exit;
  }
}

# open file, read through it, parse out the CSV, return the fields we want
sub readAYPFile {
  my ($filename, $ret) = @_;

  open(FH, $filename) || die "couldn't open $filename: $!";
  while (my $line = <FH>) {
    chomp $line;
    my @data = split(/,/, $line);
    my $schoolID = $data[1];
    if ($schoolID !~ /^\d+$/) {
      print STDERR "skipping line, invalid schoolid ($schoolID), school name: $data[3]\n";
      next;
    }

    # handy debugging for entry order.
    #for (my $n = 0; $n < 16; ++$n) { print "$n\t$data[$n]\n"; }
    if ($data[15] !~ /^Y|N$/i) {
      for (my $n = 0; $n <= 16; ++$n) { print "$n\t$data[$n]\n"; }
      exit;
    }

    # skip non-high school entries.
    next unless ($data[5] =~ /^H/);

    # save off the columns we actually want to keep.
    $ret->{$schoolID}{districtID} = $data[0];
    $ret->{$schoolID}{schoolID} = $schoolID;
    $ret->{$schoolID}{districtName} = $data[2];
    $ret->{$schoolID}{schoolName} = $data[3];
    $ret->{$schoolID}{county} = $data[4];
    $ret->{$schoolID}{reportType} = $data[5];
    $ret->{$schoolID}{overallStatus} = $data[7];
    $ret->{$schoolID}{titlei} = $data[15];
  }

  close FH;

  return $ret;
}

# open file, read through it, parse out the CSV, return the fields we want
sub readRCFile {
  my ($filename, $ret) = @_;

  open(FH, $filename) || die "couldn't open $filename: $!";
  while (my $line = <FH>) {
    chomp $line;
    my @data = split(/,/, $line);
    my $schoolID = $data[1];
    if ($schoolID !~ /^\d+$/) {
      print STDERR "skipping line, invalid schoolid ($schoolID), school name: $data[3]\n";
      next;
    }

    # handy debugging for entry order.
    #for (my $n = 0; $n < scalar @data; ++$n) { print "$n\t$data[$n]\n"; } exit;
    #if ($data[15] !~ /^Y|N$/i) { for (my $n = 0; $n <= 16; ++$n) { print "$n\t$data[$n]\n"; } exit; }

    # skip non-high school entries.
    next unless ($data[3] eq 'H');
#if ($schoolID == 539) { print "$schoolID / $data[49] / $data[58] / $data[65]\n"; exit; }

    # save off the columns we actually want to keep.
    $ret->{$schoolID}{teachersFTE} = $data[13];
    $ret->{$schoolID}{SATverbal} = $data[33];
    $ret->{$schoolID}{SATmath} = $data[36];
    $ret->{$schoolID}{SATwriting} = $data[39];
    $ret->{$schoolID}{SATtakenPercentage} = $data[42];
    $ret->{$schoolID}{attendancePercentage} = $data[49];
    $ret->{$schoolID}{graduationPercentage} = $data[58];
    $ret->{$schoolID}{dropoutPercentage} = $data[65];
  }

  close FH;

  return $ret;
}
