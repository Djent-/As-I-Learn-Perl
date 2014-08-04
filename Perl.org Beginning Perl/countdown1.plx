#!usr/bin/perl
#countdown1.plx
use warnings;
use strict;

my @count = (1..5);
for (reverse(@count)) {
	print "$_...\n";
	sleep 1;
}