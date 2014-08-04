#!/usr/bin/perl
#currency2.plx
use warnings;
use strict;
print "Currency converter\n\nPlease enter the exchange rate: ";
my $yen = <STDIN>;
print "49518 Yen is ", (49518 / $yen), " pounds\n";
print "360 Yen is ", (360 / $yen), " pounds\n";
