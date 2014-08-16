#!c:/perl64/bin/perl.exe
#highresolutiontimer1.plx
#3.9, page 137
#182
use warnings;
use strict;
use Time::HiRes qw(gettimeofday);
print "Press return when ready: ";
my $before = gettimeofday;
my $line = <>;
my $elapsed = gettimeofday-$before;
print "You took $elapsed seconds.\n";