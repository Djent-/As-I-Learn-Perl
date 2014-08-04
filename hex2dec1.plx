#!/usr/bin/perl
#hex2dec1.plx
use strict;
use warnings;
print "Enter in a hexadecimal number: ";
my $hexadec = <STDIN>;
print $hexadec, " is ", hex($hexadec), " in decimal.\n"