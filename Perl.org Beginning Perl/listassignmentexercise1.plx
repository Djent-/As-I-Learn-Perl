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