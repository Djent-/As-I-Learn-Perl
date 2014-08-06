#!/usr/bin/perl
#match6.plx
use warnings;
use strict;

$_ = "one\ntwo";
my $pattern = "e.t";

# /s treats the string as a single line, and . will match newline character
if (/$pattern/s) {
	print "$pattern exists in the single line string\n";
} else {
	print "$pattern does not exist in the single line string\n";
}