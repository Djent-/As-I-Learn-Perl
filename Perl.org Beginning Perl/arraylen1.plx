#!/usr/bin/perl
#arraylen1.plx
use warnings;
use strict;

my @array1;
my $scalar1;

@array1 = qw(Monday Tuesday Wednesday Thursday Friday Saturday Sunday);
$scalar1 = @array1;

print "Array1 is @array1\nScalar1 is $scalar1\n";