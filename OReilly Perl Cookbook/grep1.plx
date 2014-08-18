#!c:/perl64/bin/perl.exe
#grep1.plx
#186
use warnings;
use strict;

my @nums = (1..100);
my @bigs = grep { $_ > 95 } @nums;
print "@bigs\n";
