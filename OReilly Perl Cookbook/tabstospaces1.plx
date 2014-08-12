#!c:/perl64/bin/perl.exe
#tabstospaces1.plx
#166
use strict;
use warnings;
use Test::Tabs;

my @array = (
	"The first test",
	"	The second test",
	"	The		Third	Test",
	"          The fourth   test"
);
my @expanded_lines = expand(@array);
print "@expanded_lines\n";

my @tabulated_lines = unexpand(@array);
print "@tabulated_lines\n";