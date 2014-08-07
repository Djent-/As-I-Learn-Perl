#!/usr/bin/perl
#summary1.plx
use warnings;
use strict;

# this doesn't work either
$/ = "";
my $counter = 1;

while (<>) {
	print $counter++, ":";
	print ((split /\n/,$_)[0]);
	print "\n"
}