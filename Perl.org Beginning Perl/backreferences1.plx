#!/usr/bin/perl
#backreferences1.plx
use warnings;
use strict;

$_ = "Find the repeated word in in the string";

# search for a word boundary followed by any number of word characters
# followed by a space and then those same word characters followed by
# a word boundary
if (/\b(\w+) \1\b/) {
	print "Repeated word: $1\n";
}