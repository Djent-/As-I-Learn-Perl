#!/usr/bin/perl
#copy1.plx
use warnings;
use strict;

my $source = shift @ARGV;
my $destination = shift @ARGV;

open IN, $source or die "Can't read source $!";
open OUT, ">$destination" or die "Can't write to output $!";

print "Copying $source to $destination\n";

while (<IN>) {
	print OUT $_;
}