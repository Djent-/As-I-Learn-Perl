#!c:/perl64/bin/perl.exe
#nthstringmatch2.plx
#201
# page 260
use warnings;
use strict;

my $pond = "One fish two fish red fish blue fish";

my @colors = ($pond =~ /(\w+)\s+fish\b/gi); # get all the colors
my $color = $colors[2]; # get the color we want

# without temporary array
$color = ( $pond =~ /(\w+)\s+fish\b/gi )[2]; # just grab the third element

print "The third fish in the pond is $color.\n";