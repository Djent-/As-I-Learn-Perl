#!usr/bin/perl
#strcomp1.plx
use warnings;
print "Which came first the chicken or the egg? ";
print "chicken" cmp "egg", "\n";
print "Are dogs greater than cats? ";
print "dog" gt "cat", "\n";
print "Is ^ less than + ? ";
print "^" lt "+", "\n"

# cmp does a three-way comparison
# gt is greater than
# lt is less than
# ge and le for >= and <=
# should stop and return when one character satisfies the comparison