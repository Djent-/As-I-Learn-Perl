#!c:/perl64/bin/perl.exe
#substitution2.plx
#197
# page 246
use warnings;
use strict;

my $string = "good food";
# replace any and all 'o's with 'e's
$string =~ s/o*/e/g;
print "$string\n";

# prints "egeede efeede"