#!c:/perl/bin
#modify1.plx
#112
use warnings;
use strict;

my @band = qw(Crosby Stills Nash Young);
my $ref = \@band;
print "Band members before: @band\n";
pop @{$ref};
print "Band members after: @band\n";