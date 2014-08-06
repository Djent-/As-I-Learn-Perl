#!/usr/bin/perl
#match4.plx
use warnings;
use strict;

$_ = '1: A silly sentence (495,a) *BUT* one which will be useful. (3)';

# finds the first lowercase alphabetic word > 1 character long
my $pattern = "([a-z]+)";

if (/$pattern/) {
	print "The text matches the pattern '$pattern'.\n";
	print "\$1 is '$1'\n" if defined $1;
	print "\$2 is '$2'\n" if defined $2;
	print "\$3 is '$3'\n" if defined $3;
	print "\$4 is '$4'\n" if defined $4;
	print "\$5 is '$5'\n" if defined $5;
} else {
	print "'$pattern' was not found\n";
}

$pattern = "(\\w+)";

if (/$pattern/) {
	print "The text matches the pattern '$pattern'.\n";
	print "\$1 is '$1'\n" if defined $1;
	print "\$2 is '$2'\n" if defined $2;
	print "\$3 is '$3'\n" if defined $3;
	print "\$4 is '$4'\n" if defined $4;
	print "\$5 is '$5'\n" if defined $5;
} else {
	print "'$pattern' was not found\n";
}