#!/usr/bin/perl
#currency3.plx
#Chapter 2 Exercise 1
use warnings;
use strict;
print "Currency converter\n";
print "Enter the exchange rate: ";
my $yen = <STDIN>;
print "The exchange rate is ", $yen / 1, " Yen per pound.\n";
print "Enter in a number of yen to convert: ";
my $convert = <STDIN>;
print $convert / 1, " Yen is worth ", ($convert / $yen), " pounds.\n";