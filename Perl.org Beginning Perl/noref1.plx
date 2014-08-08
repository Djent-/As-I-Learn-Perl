#!c:/perl/bin
#noref1.plx
#110
use warnings;
use strict;

my $ref = [1,2,3];
print "Before: $ref\n";
print "@{$ref}\n";
$ref++;
print "After: $ref\n";
print "@{$ref}\n";