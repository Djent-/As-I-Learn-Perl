#!c:/perl64/bin/perl.exe
#overlappingdigits1.plx
#198
# page 248
use warnings;
use strict;

my $digits = "123456789";
my @nonlap = $digits =~ /(\d\d\d)/g;
my @yeslap = $digits =~ /(?=(\d\d\d))/g;
print "Non-overlapping: @nonlap\n";
print "Overlapping: @yeslap\n";