#!c:/perl64/bin/perl.exe
#substitution1.plx
#196
# page 246
use warnings;
use strict;

my $string = "good food";
# replace any and all 'o's with 'e's
$string =~ s/o*/e/;
print "$string\n";

# prints "egood food"