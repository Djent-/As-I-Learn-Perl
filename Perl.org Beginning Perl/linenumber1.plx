#!/usr/bin/perl
#linenumber1.plx
use warnings;
use strict;

open FILE, "nlexample.txt" or die $!;
my $lineno = 1;

# equivalent to "while (defined ($_ = <FILE>))"
while (<FILE>) {
	print $lineno++;
	print ": $_";
}