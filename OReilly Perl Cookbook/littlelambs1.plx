#!c:/perl64/bin/perl.exe
#littlelambs1.plx
#199
# page 249
use warnings;
use strict;

my $string = "And little lambs eat ivy";
$string =~ /l[^s]*s/;
print "($`) ($&) ($')\n";
