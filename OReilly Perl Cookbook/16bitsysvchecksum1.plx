#!c:/perl64/bin/perl.exe
#16bitsysvchecksum1.plx
#162
use warnings;
use strict;

# sum - compute the 16-bit checksum of all input files

my $checksum = 0;

while (<>) {
	$checksum += unpack("%16C*", $a);
}
$checksum %= (2 ** 16) - 1;
print "$checksum\n";