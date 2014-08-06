#!usr/bin/perl
#rhyming1.plx
use warnings;
use strict;

my $syllable = "ink";
while (<>) {
	print if /$syllable$/;
}