#!c:/perl64/bin/perl.exe
#traversehash1.plx
#193
#5.4 page 212
use warnings;
use strict;

my %food_color = (
	Banana => "yellow",
	Apple => "red",
	Carrot => "orange",
	Lemon => "yellow"
);

while(my ($food, $color) = each(%food_color)) {
	print "$food is $color\n";
}