#!/usr/bin/perl
#look2.plx
use warnings;
use strict;

$_ = "fish cake and fish pie";
print "Our original order was $_\n";

# replace fish with cream only if the following word is not cake
s/fish(?! cake)/cream/;
print "Actually, make that $_ instead \n";