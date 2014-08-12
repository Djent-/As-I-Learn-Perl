#!c:/perl64/bin/perl.exe
#comparingfloats1.plx
#174
use warnings;
use strict;

sub equal {
	my ($A, $B, $dp) = @_;
	
	return sprintf("%.${dp}g", $A) eq sprintf("%.${dp}g", $B);
}

my ($float1, $float2) = (1.22222, 1.22222222222);
print equal($float1, $float2, 3);