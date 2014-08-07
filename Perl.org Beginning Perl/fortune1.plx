#!/usr/bin/perl
#fortune1.plx
use warnings;
use strict;

# this doesn't work
$/ = "%";
# good enough

open QUOTES, "quotes.dat" or die $!;
my @file = <QUOTES>;

my $random = rand(@file);
my $fortune = $file[$random];
chomp $fortune;

print $fortune, "\n";