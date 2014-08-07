#!/usr/bin/perl
#linenumber1.plx
use warnings;
use strict;

open FILE, "nlexample.txt" or die $!;
my $lineno = 1;

while (<FILE>) {
	print $lineno++;
	print ": $_";
}