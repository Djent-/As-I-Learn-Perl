#!/usr/bin/perl
#elems1.plx
use warnings;
use strict;

my @array = qw(alpha bravo charlie delta);

print "Scalar value: ", scalar @array, "\n";
print "Highest value: ", $#array, "\n";

# "$#" gets the index of the highest element in the array