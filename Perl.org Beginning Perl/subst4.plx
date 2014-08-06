#!/usr/bin/perl
#subst4.plx
use warnings;
use strict;

$_ = "there are two major products that come out of Berkeley: LSD and UNIX";
# Jeremy Anderson

# switches every set of two words in the string
s/(\w+)\s+(\w+)/$2 $1/g;
print $_, "?\n";