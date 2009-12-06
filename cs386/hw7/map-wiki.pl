#!/usr/bin/perl

use lib '/inervo/lib/';
use Inervo::DBI;

use CGI;

use strict;


# Global to keep our SQL statements.
my $SQL = '';


my $db = Inervo::DBI->new( default_db => 'wiki' );
my $cgi = CGI->new();

print "content-type: text/html\n\n";

navigationTop();
searchbox($db);

if ($cgi->param("stats")) {
  countyStats($db, $cgi->param("sortby"));
} elsif ($cgi->param("articlename")) {
  my $ret = updateMapping($db, $cgi->param("schoolid"), $cgi->param("articlename"));
  displayMatchbox($db, $cgi->param("schoolid")) if ($ret);
} elsif ($cgi->param("getnext")) {
  my $schoolid = getNext($db);
  displayMatchbox($db, $schoolid);
} elsif (my $schoolid = $cgi->param("schoolid")) {
  displayMatchbox($db, $schoolid);
} elsif (my $name = $cgi->param("schoolname")) {
  searchName($db, $name);
}

navigationBottom();

exit;

sub countyStats {
  my ($db, $sortby) = @_;

  #print STDERR "sortby: $sortby\n";
  if ($sortby !~ /^[A-Z_]+$/i) {
    $sortby = 'graduationPercentage';
  }

  my $sql = qq(SELECT county,
 TRUNCATE(AVG(SATverbal+SATmath+SATwriting),0) AS SATaverage,
 TRUNCATE(AVG(SATtakenPercentage),1) AS SATtakenPercentage,
 SUM(teachersFTE) AS SUM_teachersFTE,
 TRUNCATE(AVG(attendancePercentage),2) AS attendancePercentage,
 TRUNCATE(AVG(graduationPercentage),2) AS graduationPercentage,
 TRUNCATE(AVG(dropoutPercentage),2) AS dropoutPercentage
FROM school,aypdata WHERE school.schoolID=aypdata.schoolID
GROUP BY county ORDER BY ) . $sortby;
  logSQL($sql);
  my $sth = $db->executeStatement($sql);
  unless ($sth && $sth->rows() ) {
    print "Sorry, no rows returned on stats query.<br />\n";
    return undef;
  }

    print qq(<table width="100%" border=0>
 <tr>
  <td><a href="?stats=1&sortby=county">County</a></td>
  <td><a href="?stats=1&sortby=SATaverage">avg SAT score</a></td>
  <td><a href="?stats=1&sortby=SATtakenPercentage">% taking SAT</a></td>
  <td><a href="?stats=1&sortby=SUM_teachersFTE">teachers (FTE)</a></td>
  <td><a href="?stats=1&sortby=attendancePercentage">avg attendance</a></td>
  <td><a href="?stats=1&sortby=graduationPercentage">% graduating</a></td>
  <td><a href="?stats=1&sortby=dropoutPercentage">% dropped out</a></td>
 </tr>
);
  while (my $row = $sth->fetchrow_arrayref()) {
    print ' <tr><td>', join('</td><td>', @$row), "</td></tr>\n";
  }
  print qq(</table>);
}

sub updateMapping {
  my ($db, $id, $article) = @_;

  # TODO: check to make sure the ID passed in actually exists.
  unless ($id) {
    print "Sorry, and ID is needed. Try again?<br />\n";
    return undef;
  }

  # bounds checking on article name. Basically, < 80 characters to match DB.
  if (length $article > 80) {
    print "Sorry, the article name you gave is over the allowable length (80 characters)<br />\n";
    return undef;
  }

  my $sql = 'REPLACE INTO schoolMap SET articleName=?, schoolID=?';
  logSQL($sql);
  #print STDERR "sql: $sql\n";
  $db->executeStatement($sql, $article, $id);

  print "<strong>Thanks! Updated the article name.</strong><br /><br />\n";

  return 1;
}

sub searchName {
  my ($db, $name) = @_;


  my $likevalue = $db->dbQuote('%' . $name . '%');
  #print "likevalue: $likevalue<br />\n";
  my $sql = qq(SELECT school.schoolID,schoolName,county,districtName,articleName
  FROM (school LEFT JOIN schoolMap ON schoolMap.schoolID=school.schoolID)
   LEFT JOIN district ON district.districtID=school.districtID
  WHERE schoolName LIKE ) . $likevalue;
  logSQL($sql);
  my $sth = $db->executeStatement($sql);

  #print "rows: ", $sth->rows(), "<br />\n";
  unless ($sth && $sth->rows()) {
    print "No rows found. Sorry it didn't work out better.\n";
    return;
  }

  print qq(<table border=1 width="50%">
 <tr>
  <td>ID</td>
  <td>School Name</td>
  <td>County</td>
  <td>District Name</td>
 </tr>
);
  while (my $row = $sth->fetchrow_hashref) {
    print qq( <tr>
  <td><a href="?schoolid=$$row{schoolID}">$$row{schoolID}</a></td>
  <td>$$row{schoolName}</td>
  <td>$$row{county}</td>
  <td>$$row{districtName}</td>
 </tr>
);

  }

  print qq(</table>\n);

}

sub navigationBottom {
  print qq(
<br />
<br />
<br />
<hr>
<a href="?">start over</a>
|
<a href="?stats=1">Show county stats</a>
<br />
<br />
<br />
<br />
SQL used:<br />
<pre>$SQL</pre>
</body>
</html>
);

}

sub navigationTop {
  print qq(
<html>
<head>
 <title>Oregon AYP school data wikification tool</title>
<style type="text/css"> <!--
  FORM { margin: 0px; padding: 0px; }
--> </style>
</head>
<body>
);

}

sub suggestedSearches {
  my ($name, $county) = @_;


  my @url;
  push @url, htmlLink($name, 'Oregon');
  push @url, htmlLink($name, $county, 'county');
  push @url, htmlLink($name, $county, 'county', 'Oregon');
  return join("<br />\n", @url);

}

  # Make viewable version, add ... to the end if it's longer.
sub htmlLink {
  #my ($search) = @_;
  my $search = join(' ', @_);

  my $gquery = 'http://www.google.com/search?q=site%3Aen.wikipedia.org+';
  my $gqtail = '&domains=en.wikipedia.org&sitesearch=en.wikipedia.org&btnG=wikipedia';
  my $u = $gquery . CGI::escape($search) . $gqtail;
  #print STDERR "u: $u\n";

  my $short = substr($search, 0, 80);
  unless ($search eq $short) { $short .= '...'; }
  #print STDERR "lengths: ", length $u, " / ", length $short, "\n";

  my $ret = qq(&nbsp;&nbsp;&nbsp;&nbsp;Google: &quot;<a href="$u">$short</a>&quot;);
  #print STDERR "link: $ret\n";

  return $ret;
}

sub displayMatchbox {
  my ($db, $id) = @_;

  my $sql = qq(SELECT school.schoolID,schoolName,county,districtName,articleName 
 FROM (school LEFT JOIN schoolMap ON schoolMap.schoolID=school.schoolID)
   LEFT JOIN district ON district.districtID=school.districtID
 WHERE school.schoolID=?);

  logSQL($sql);
  my $sth = $db->executeStatement($sql, $id);

  unless ($sth && $sth->rows) {
    print "Couldn't find the schoolID ($id) given. Sorry it didn't work out better.\n";
    return;
  }
  my $row = $sth->fetchrow_hashref();

  # pull out hash values, it makes our life a lot easier.
  my $name = $row->{schoolName};
  my $county = $row->{county};
  my $urls = suggestedSearches($name, $county);

  print qq(
<table border=0>
 <tr>
  <td>School ID</td>
  <td>&nbsp;</td>
  <td>$id</td>
 <tr>
 <tr>
  <td>School name</td>
  <td></td>
  <td>$name</td>
 </tr>
 <tr>
  <td>County</td>
  <td></td>
  <td>$$row{county}</td>
 </tr>
 <tr>
  <td>Wikipedia article name
  <td></td>
  <td><form name="mapschool" method="get"><input type="hidden" name="schoolid" value="$id" /><input type="text" name="articlename" value="$$row{articleName}" size=50 maxlength=80 /><input type="submit" value="Update" /></form></td>
 </tr>
 <tr><td></td><td></td>
  <td>Wikipedia searches:<br />$urls</td>
 </tr>
</table>



);

}

sub getNext {
  my ($db) = @_;

  my $sql = qq(SELECT school.schoolID,schoolName,articleName
  FROM school LEFT JOIN schoolMap ON school.schoolID=schoolMap.schoolID
  WHERE articleName IS NULL or articleName="" LIMIT 1);
  logSQL($sql);
  my $sth = $db->executeStatement($sql);

  return undef unless ($sth && $sth->rows);
  my ($id) = $sth->fetchrow_array;

  return $id;
}


sub searchbox {
  print qq(
<form name="searchschool" method="get">
<table border=0 width="100%"><tr><td><span><a href="?getnext=1">Get the next school needing a match</a>, or search for a school by entering one of the following:</span></td>
  <td></td>
  <td align="right"><font size="-1">School Name: <input type="text" name="schoolname" size=40 />
School ID: <input type="text" name="schoolid" size=10 />
<input type="submit" value="Search" /></font></td></tr></table>
</form>
<hr /><br />
);

}


sub logSQL {
  $SQL .= join(' ', @_) . "\n";
}
