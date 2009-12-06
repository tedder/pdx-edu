#!/usr/bin/perl


# My basic database access module. It hides all of the details but leaves
# SQL to the frontend.
use lib '/inervo/lib/';
use Inervo::DBI;

use Data::Dumper;
use strict;

# set our file locations.
use constant BASEDIR => '/home/tedt/git/pdx-edu/cs386/hw7/data/';
use constant RCFILE => BASEDIR . 'RCmediaSchoolsAggregate.csv';
use constant AYPFILE => BASEDIR . 'AYPmediaSchools.csv';

# This is a little expensive (because tests are required), but it's an easy way
# to turn the debugging up or down.
use constant DEBUG => 0;

# This is our hack because this isn't object-oriented, but we need to pass data.
my $data = {};
my $STAT = {};

# Open database. It'll connect on-demand.
my $db = Inervo::DBI->new( default_db => 'wiki' );

# Kill the tables before we start so we can fully reinsert.
$db->executeStatement("DELETE FROM district WHERE 1>0;") || die "district delete failed";
$db->executeStatement("DELETE FROM school WHERE 1>0;") || die "school delete failed";
$db->executeStatement("DELETE FROM aypdata WHERE 1>0;") || die "aypdata delete failed";

# read
readRCFile(RCFILE, $data);
readAYPFile(AYPFILE, $data);

# parse
specialExceptions($data);
validateInput($data);

print "stats: ", Dumper($STAT) if DEBUG;

# output
outputToDatabase($db, $data);

exit;

# Looks for our district, creates it if it doesn't exist. In either case, returns true.
sub insertOrReturnDistrict {
  my ($db, $distID, $distName) = @_;

  my $sql = 'SELECT districtID FROM district WHERE districtName=?';
  my $sth = $db->executeStatement($sql, $distName);

  # did we get rows?
  if ($sth && $sth->rows()) {
    my ($retDistID) = $sth->fetchrow;

    # Did we get it? Great, return it.
    if ($retDistID) { return $retDistID; }
  }

  print "inserting new district, $distID/$distName\n" if DEBUG;
  # Okay, we need to insert the row.
  $sql = 'INSERT INTO district SET districtID=?, districtName=?';
  $db->executeStatement($sql, $distID, $distName);
  print " done.\n" if DEBUG;

  # assuming it works.
  return $distID;
}

# Output each school.
sub outputToDatabase {
  my ($db, $data) = @_;

  # ignoring the return value, assuming it works.

  # Statements will be cached by DBI module.
  my $school = 'INSERT INTO school SET schoolID=?, districtID=?, schoolName=?, county=?';
  my $ayp = 'INSERT INTO aypdata SET schoolID=?, year=?, reportType=?, overallStatus=?, titlei=?, teachersFTE=?, SATverbal=?, SATmath=?, SATwriting=?, SATtakenPercentage=?, attendancePercentage=?, graduationPercentage=?, dropoutPercentage=?';

  while (my ($schoolID, $row) = each %$data) {
    insertOrReturnDistrict($db, $row->{districtID}, $row->{districtName}) || die "insert to district failed ($$row{districtID})";
    print "inserting to school\n" if DEBUG;
    $db->executeStatement($school, $row->{schoolID}, $row->{districtID}, $row->{schoolName}, $row->{county});
    print "inserting to ayp\n" if DEBUG;
    $db->executeStatement($ayp, $row->{schoolID}, 2009, $row->{reportType}, $row->{overallStatus}, $row->{titlei}, $row->{teachersFTE}, $row->{SATverbal}, $row->{SATmath}, $row->{SATwriting}, $row->{SATtakenPercentage}, $row->{attendancePercentage}, $row->{graduationPercentage}, $row->{dropoutPercentage});
    #print "attendance: $$row{attendancePercentage}\n"; exit;
    print " done.\n" if DEBUG;
    #print Dumper($row); exit;


  }

  print "all done inserting.\n" if DEBUG;


}

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
        #print Dumper($row);
      }

      if ($STAT->{$tag} < length $row->{$tag}) {
        $STAT->{$tag} = length $row->{$tag};
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
    #if ($data[15] !~ /^Y|N$/i) {
    #  for (my $n = 0; $n <= 16; ++$n) { print "$n\t$data[$n]\n"; }
    #  exit;
    #}

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
