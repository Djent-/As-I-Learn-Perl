#!c:/perl/bin
#braces1.plx
#140
use warnings;
use strict;
if (1) {
	print "Hello";

my $file = shift;
if (-e $file) {
	print "File exists.\n";
}