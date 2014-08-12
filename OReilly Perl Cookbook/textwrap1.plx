#!c:/perl64/bin/perl.exe
#textwrap1.plx
#169
use warnings;
use strict;

my @input = ("Folding and splicing is the work of an editor,",
	"not a mere collection of silicon",
	"and",
	"mobile electrons!");

use Text::Wrap qw($columns &wrap);

my $columns = 20;
print "0123456789" x 2, "\n";
print wrap("     ", "   ", @input), "\n";