#c:/perl64/bin -s
#nl3.plx
#141
use warnings;
use strict;

my $lineno;
my $current = "";
our ($v,$h);

if (defined $v) {
	print "$0 - line numberer, version 3\n";
	exit;
}

if (defined $h) {
	print <<EOF;
$0 - Number lines in a file

Usage : $0 [-h|-v] [finename filename...]

This utility prins out each line in a file to standard output,
with line numbers added.
EOF
	exit;
}

while (<>) {
	if ($current ne $ARGV) {
		$current = $ARGV;
		print "\n\t\tFile: $ARGV\n\n";
		$lineno = 1;
	}
	print $lineno++;
	print " : $_";
}