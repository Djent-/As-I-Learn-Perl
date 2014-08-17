#!c:/perl64/bin/perl.exe
#splice1.plx
#185
use warnings;
use strict;

my @members = ("Time", "Flies");
my @initiates = ("An", "Arrow");
# push is more efficient than concatenation
push(@members, @initiates);
print "@members\n";

splice(@members, 2, 0, "Like");
print "@members\n";
splice(@members, 0, 1, "Fruit");
splice(@members, -2, 2, "A", "Banana");
print "@members\n";