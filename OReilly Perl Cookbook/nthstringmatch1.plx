#!c:/perl64/bin/perl.exe
#nthstringmatch1.plx
#200
# page 259
use warnings;
use strict;

$_ = "one fish two fish red fish blue fish";
my $WANT = 3;
my $count = 0;
# match all words plus a space plus "fish" plus a word boundary and ignore case
while (/(\w+)\s+fish\b/gi) {
	if (++$count == $WANT) {
		print "The third fish is a $1 one.\n";
		# Warning: don't `last' out of this loop
	}
}