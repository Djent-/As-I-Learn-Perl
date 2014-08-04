#!usr/bin/perl
#badprefix1.plx
use warnings;
use strict;

my @array = (1,3,5,7,9);
print @array[1];

# we want to print the scalar value at index 1 of @array
# so we need to use "print $array[1];" instead

#It'll give you a warning, but it'll print as expected, actually
#Perl isn't all bad 