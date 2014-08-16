#!c:/perl64/bin/perl.exe
#datecalc1.plx
#3.11 page 142
#184
use strict;
use warnings;
# I don't have this module installed
use Date::Manip qw(ParseDate DateCalc);
my $d1 = ParseDate("Tue, 26 May 1998 23:57:38 -0400");
my $d2 = ParseDate("Wed, 27 Mat 1998 05:04:03 +0100");
print DateCalc($d1, $d2);