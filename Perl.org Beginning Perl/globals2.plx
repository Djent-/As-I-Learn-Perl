#!c:/perl/bin
#globals2.plx
#126
use warnings;
$main::name = "Patrick";
$Fred::name = "Fred Flinstone";
$Barney::name = "Barney Rubble";

print "\$name in package main is $name\n";
package Fred;
print "\$name in package Fred is $name\n";
package Barney;
print "\$name in package Barney is $name\n";
package main;