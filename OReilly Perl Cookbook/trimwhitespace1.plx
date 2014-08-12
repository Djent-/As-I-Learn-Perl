#!c:/perl64/bin/perl.exe
#trimwhitespace1.plx
#171
use warnings;
use strict;

my $totrim = "		    please trim me		";

sub trim {
	# get all the strings to trim
	my @out = @_;
	# loop through strings
	for (@out) {
		# trim off the beginning
		s/^\s+//;
		# trim off the end
		s/\s+$//;
	}
	# if the program wants an array, give it an array
	# it the program wants a scalar, give it the first element
	return wantarray ? @out : $out[0];
}

print trim($totrim) . "\n";