#!c:/perl64/bin/perl.exe
#paragraphformat1.plx
#170
use warnings;
use strict;
use Text::Wrap qw(&wrap $columns);
use Term::ReadKey qw(GetTerminalSize);

my ($columns) = GetTerminalSize();
# set input seperator to '', set record seperator to "\n\n"
($/, $\) = ('', "\n\n");
while (<>) {
	# substitute two spaces for every "\n" in the file
	s/\s*\n\s*/  /g;
}