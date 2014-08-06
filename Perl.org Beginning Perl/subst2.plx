#!/usr/bin/perl
#subst2.plx
use warnings;
use strict;

$_ = "Awake! Awake! Fear, Fire, Foes! Awake! Fire, Foes! Awake!";
# Tolkien

# /g substitutes for all cases globally
s/Foes/Flee/g;
print $_,"\n";