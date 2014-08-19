#!c:/perl64/bin/perl.exe
#foreachref1.plx
#187
use warnings;
use strict;

my @fruits = ("Apple", "Blackberry");
my $fruit_ref = \@fruits;
foreach my $fruit (@$fruit_ref) {
	print "$fruit tastes good in a pie.\n";
}