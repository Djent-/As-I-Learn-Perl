#!c:/perl64/bin/perl.exe
#laststringmatch1.plx
#202
# page 261
use warnings;
use strict;

my $pond = 'One fish tow fish red fish blue fish swim here.';
if ($pond =~ m{
					\b	(	\w+)	\s+ fish \b # find some pattern
				(?!	.*	\b fish \b ) # mustn't be able to find something and \b fish \b
			}six ) # '.' can equal "\n", ignore case, I forget 'x'
{
	print "Last fish is $1.\n";
} else {
	print "Failed!";
}