#!c:/perl64/bin/perl.exe
#simplechecksum1.plx
#161
use warnings;
use strict;

my $sum = 0;
my $string = "an apple a day";

foreach my $ascval (unpack("C*", $string)) {
	$sum += $ascval;
}
print "sum is $sum\n";
