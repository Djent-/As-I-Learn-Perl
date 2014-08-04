#!usr/bin/perl
#ranges1.plx
use warnings;
use strict;

print "Counting up: ", (1 .. 6), "\n";
print "Counting down: ", (6 .. 1), "\n";
print "Counting down properly: ", reverse(1 .. 6), "\n";

print "Half the alphabet: ", ('a' .. 'm'), "\n";
print "Other half backwards: ", reverse('n' .. 'z'), "\n";

print "3 to z: ", (3 .. 'z'), "\n";
print "z to 3: ", ('z' .. 3), "\n";
