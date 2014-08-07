#!/usr/bin/perl
#sort4.plx
use warnings;
use strict;

my $numeric = 0;
my $input = shift;
if (defined $input and $input ep "-n") {
	$numeric = 1;
	$input = shift;
}
my $output = shift;

# if the user didn't specify an input then use STDIN
if (defined $input) {
	open INPUT, $input or die $!;
} else {
	*INPUT = *STDIN;
}

# if the user didn't specify an output then use STDOUT
if (defined $output) {
	open OUTPUT, ">$output" or die $!;
} else {
	*OUTPUT = *STDOUT;
}

# use either numeric sort or alphabetic sort
my @file = <INPUT>;
if ($numeric) {
	@file = sort { $a <=> $b } @file;
} else {
	@file = sort @file;
}

print OUTPUT @file;