#!/usr/bin/perl
#sort2.plx
use warnings;
use strict;

my $numeric = 0;
my $input = shift;
if ($input eq "-n") {
	$numeric = 1;
	$input = shift;
}
my $output = shift;

open INPUT, $input or die $!;
open OUTPUT, ">$output" or die$!;

my @file = <INPUT>;
if ($numeric) {
	@file = sort { $a <=> $b } @file;
} else {
	@file = sort @file;
}

print OUTPUT @file;