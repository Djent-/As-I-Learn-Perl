#!c:/perl64/bin/perl.exe
#capitalizefirstletter1.plx
#167
use warnings;
use strict;

my $text = "thIS is a loNG liNE";
$text =~ s/(\w+)/\u\L$1/g;
# find all words, make them lowercase, then make the first character
# uppercase
print $text . "\n";