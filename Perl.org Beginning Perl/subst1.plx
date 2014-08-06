#!/usr/bin/perl
#subst1.plx
use warnings;
use strict;

$_ = "Awake! Awake! Fear, Fire, Foes! Awake! Fire, Foes! Awake!";
# Tolkien

s/Foes/Flee/;
print $_,"\n";