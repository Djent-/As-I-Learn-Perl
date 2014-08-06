#!/usr/bin/perl
#transliteration2.plx
use warnings;
use strict;

my $string = "However, the transliteration operator can take the /d modifier";
$string =~ tr/ //d;
print $string, "\n";