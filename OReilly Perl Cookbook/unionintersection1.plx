#!c:/perl64/bin/perl.exe
#unionintersection1.plx
#188
use warnings;
use strict;

my @a = (1,3,5,6,7,8);
my @b = (2,3,5,7,9);
my (%union, %isect);

foreach my $e (@a, @b) { $union{$e}++ && $isect{$e}++ }
my @union = keys %union;
my @isect = keys %isect;
print "@a\n";
print "@b\n";
print "@union\n";
print "@isect\n";