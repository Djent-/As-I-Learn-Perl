#!/usr/bin/perl
#currency6.plx
use warnings;
use strict;

my ($value, $from, $to, $rate, %rates);
%rates = (
	pounds => 1,
	dollars => 1.6,
	marks => 3.0,
	"french francs" => 10.0,
	yen => 174.8,
	"swiss francs" => 2.43,
	drachma => 492.3,
	euro => 1.5
);
do {
	print "Enter your starting currency: ";
	$from = <STDIN>;
	chomp ($from);
	if (not exists $rates{$from}) {
		print "I don't know anything about $from as a currency\n";
		redo;
	}
	
	print "Enter your target currency: ";
	$to = <STDIN>;
	chomp ($to);
	if (not exists $rates{$to}) {
		print "I don't know anything about $to as a currency\n";
		redo;
	}
	
	print "Enter your amount: ";
	$value = <STDIN>;
	chomp ($value);
	
	$rate = $rates{$to} / $rates{$from};
	
	print "$value $ from is ", $value * $rate, " $to.\n";
} while (exists $_);