#!/usr/bin/perl
#forloop1.plx
use warnings;
use strict;

my @array = qw(America Asia Europe Africa);
my $element;
for $element (@array) {
	print $element, "\n"
}
# this is an iterative for loop, rather than a numerical for loop