#!/usr/bin/perl
#quicksum1.plx
use warnings;
use strict;

my $total = 0;
$total += $_ for @ARGV;
print "The total is $total\n"