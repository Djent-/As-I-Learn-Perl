#!usr/bin/perl
#match1.plx
use warnings;
use strict;

my $found = 0;
$_ = "Nobody wants to hurt you... 'cept, I do hurt people sometimes, Case.";

my $sought = "people";

foreach my $word (split) {
	if ($word eq $sought) {
		$found = 1;
		last;
	}
}

if ($found) {
	print "Found the word $sought\n";
}