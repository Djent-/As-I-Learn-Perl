#!c:/perl64/bin/perl.exe
#TieIxHashmodule1.plx
#194
#5.6 page 217
use warnings;
use strict;
# I don't have this module installed
use Tie::IxHash;

tie %food_color, "Tie::IxHash";
$food_color{Banana} = "Yellow";
$food_color{Apple} = "Green";
$food_color{Lemon} = "Yellow";

print "In insertion order, the foods are:\n";
foreach my $food (keys %food_color) {
	print "\t$food\n";
}
print "Still in insertion order, the foods' colors are:\n";
while (( $food, $color ) = each %food_color) {
	print "$food is colored $color.\n";
}