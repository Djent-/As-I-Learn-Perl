#!c:/perl64/bin
#usingsubstr1.plx
#156
use warnings;
use strict;

# Usage:

# $value = substr($string, $offset, $count);
# $value = substr($string, $offset);

# substr($string, $offset, $count) = $newstring;
# substr($string, $offset) = $newtail

my $string = "This is what you have";
#			 +012345678901234567890  Index forward
#			  109876543210987654321- Index backwards

my $first = substr($string, 0, 1); # "T"
my $start = substr($string, 5, 2); # "is"
my $rest = substr($string, 13);	   # "you have"
my $last = substr($string, -1);	   # "e"
my $end = substr($string, -4);	   # "have"
my $piece = substr($string, -8, 3);# "you"

print $string . "\n";

substr($string, 5, 2) = "wasn't"; # change "is" to "wasn't"
print $string . "\n";
substr($string, -12) = "ondrous"; # "This wasn't wondrous"
print $string . "\n";
substr($string, 0, 1) = "";		  # delete first character
print $string . "\n";
substr($string, -10) = "";		  # delete last 10 characters

$string = "This is what you have";

# substitute "at" for "is", restricted to first five characters
substr($string, 0, 5) =~ s/is/at/g;
print $string . "\n";

my $a = "make a hat";
print $a . "\n";

# swap the first character and last two characters of $a
(substr($a, 0, 1), substr($a, -1)) = (substr($a, -1), substr($a, 0, 1));
print $a . "\n";