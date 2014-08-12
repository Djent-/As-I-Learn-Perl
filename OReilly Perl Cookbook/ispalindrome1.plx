#!c:/perl64/bin/perl.exe
#ispalindrome1.plx
#165
use warnings;
use strict;

my $word = shift;
print "true" if $word eq reverse $word;