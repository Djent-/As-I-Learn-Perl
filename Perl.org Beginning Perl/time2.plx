#!/usr/bin/perl
#time2.plx
use warnings;
use strict;

# don't use line buffering
$| = 1; 
for (1..20) {
	print ".";
	sleep 1;
}
print "\n";