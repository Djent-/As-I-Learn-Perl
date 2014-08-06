#!/usr/bin/perl
#look3.plx
use warnings;
use strict;

$_ = "fish cake and cream cake";
print "Our original order was $_ \n";

# substitute "cake" for "and chips" if "fish" preceeds "cake"
s/(?<=fish )cake/and chips/;
print "No, wait. I'll have $_ instead\n";

# substitute "cake" for "slices" if "fish" does not preceed "cake"
s/(?<!fish )cake/slices/;
print "Actually, make that $_ will you?\n";