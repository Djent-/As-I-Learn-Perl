#!usr/bin/perl
#match5.plx
use warnings;
use strict;

$_ = "one\ntwo";

# looking for "two" starting at the beginning of a line and ending
# at the end of the line
my $pattern = "^two\$"; # escape the $

if (/$pattern/) {
	print "$pattern exists in the single line string\n";
} else {
	print "$pattern does not exist in the single line string\n";
}

if (/$pattern/m) {
	print "$pattern exists in the multiple line string\n";
} else {
	print "$pattern does not exist in the multiple line string\n";
}