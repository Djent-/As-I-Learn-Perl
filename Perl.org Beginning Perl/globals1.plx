#!c:/perl/bin
#globals1.plx
#125
use warnings;
$main::name = "Patrick";
$Fred::name = "Fred Flinstone";
$Barney::name = "Barney Rubble";

print "\$name in package main is $name\n";
# I think the syntax is correct here, but Notepad++
# doesn't highlight it correctly
print "\$name in package Fred is $Fred::name\n";
print "\$name in package Barney is $Barney::name\n";