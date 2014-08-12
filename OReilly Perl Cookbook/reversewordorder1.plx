#!c:/perl64/bin/perl.exe
#reversewordorder1.plx
#164
use warnings;
use strict;

my $string = 'Yoda said, "can you see this"';
my @allwords = split (" ", $string);
my $revwords = join (" ", reverse @allwords);
print $revwords . "\n";