#!usr/bin/perl
#listassignmentexercise1.plx
use warnings;
use strict;

my $a; my $b;
($a, $b) = (10, 20);
print $a, " ", $b, "\n";

my $c;
($a, $b, $c) = (30, 40);
print $a, " ", $b, " ", $c, "\n";
# more variables than values
# $c is empty, warns that value is uninitialized

($a, $b, $c) = (50, 60, 70, 80);
print $a, " ", $b, " ", $c, "\n";
# more values than variables
# no warnings, no unexpected effects

($a, $b, $c) = 1;
print $a, " ", $b, " ", $c, "\n";
# list of variables on left, scalar on right
# $a gets 1, everything else gets nothing

$a = (1..3);
print $a
# scalar on left, list on right
# warning that values in the range go unused