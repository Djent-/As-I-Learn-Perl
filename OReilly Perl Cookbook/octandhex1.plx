#!c:/perl64/bin/perl.exe
#octandhex1.plx
#179
use warnings;
use strict;
print "Enter a number: ";
my $num = <STDIN>;
chomp $num;
exit unless defined $num;
$num = oct($num) if $num =~ /^0/;
printf "%d %x %o\n", $num, $num, $num;
