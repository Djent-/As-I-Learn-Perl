#!c:/perl64/bin/perl.exe
#trigindegrees1.plx
#176
use warnings;
use strict;

BEGIN {
	use constant PI => 3.14159265358979;
	
	sub deg2rad {
		my $degrees = shift;
		return ($degrees / 180) * PI;
	}
	
	sub rad2deg {
		my $radians = shift;
		return ($radians / PI) * 180;
	}
}

print deg2rad(180) . "\n";
print rad2deg(PI) . "\n";