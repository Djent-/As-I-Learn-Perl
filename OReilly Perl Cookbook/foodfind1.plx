#!c:/perl64/bin/perl.exe
#foodfind1.plx
#195
#example 5.2 page 222
use warnings;
use strict;

my $given = shift @ARGV or die "usage: foodfind food_or_color\n";

my %color = (
		Apple => "red",
		Banana => "yellow",
		Lemon => "yellow",
		Carrot => "orange"
	);
my %food = reverse %color;
if (exists $color{$given}) {
	print "$given is a food with color $color{$given}.\n";
}
if (exists $food{$given}) {
	print "$food{$given} is a food with color $given.\n";
}