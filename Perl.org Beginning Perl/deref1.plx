#!c:/perl/bin
#deref1.plx
#109
use warnings;
use strict;

my @array = (1,2,3,4,5);
# create an array reference
my $array_r = \@array;

# this appears to be the right syntax, but I don't think
# Notepad++ is highlighting it correctly
print "This is our dereferenced array: @{$array_r}\n";
for (@{$array_r}) {
	print "An element: $_\n";
}
print "The highest element is the number $#{$array_r}\n";
print "This is what our reference looks like: $array_r\n";