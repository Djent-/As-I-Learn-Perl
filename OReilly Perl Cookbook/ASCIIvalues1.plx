#!c:/perl64/bin/perl.exe
#ASCIIvalues1.plx
#159
use warnings;
use strict;

# ord character->number		chr number->character
my $char = "A";

my $num = ord($char);
$char = chr($num);
print $num . "\n";

$char = sprintf("%c", $num); # slower
printf("Number %d is character %c\n", $num, $num);

printf("Number %d is character %c\n", 101, 101);

my $string = "This is a string";
my @array = split(//, $string);
@array = unpack("C*", $string); # also works, don't really understand
