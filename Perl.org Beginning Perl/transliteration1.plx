#!/usr/bin/perl
#transliteration1.plx
use warnings;
use strict;

my $string = "2011064";
print $string, "\n";
$string =~ tr/0-9/a-j/;
print $string, "\n";