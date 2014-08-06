#!/usr/bin/perl
#subst3.plx
use warnings;
use strict;

$_ = "there are two major products that come out of Berkeley: LSD and UNIX";
# Jeremy Anderson

# substitutes the first word followed by whitespace followed by another
# word with the second word followed by a space followed by the first word
s/(\w+)\s+(\w+)/$2 $1/;
print $_, "?\n";