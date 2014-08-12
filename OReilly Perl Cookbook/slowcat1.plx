#!c:/perl64/bin/perl.exe
#slowcat1.plx
#163
use warnings;
use strict;

# usage: slowcat [-DELAY] [files ...]

my $DELAY = ($ARGV[0] =~ /^-([.\d]+)/) ? (shift, $1) : 1;
$| = 1;
while (<>) {
	for (split(//)) {
		print;
		select(undef, undef, undef, 0.005 * $DELAY);
	}
}