#!c:/perl64/bin
#hello3.plx
#142
use warnings;
use strict;

use Getopt::Std;
my %options;
# pass a string and a hash reference
getopts("vhl:",\%options);

if ($options{v}) {
	print "Hello, world, version 3.\n";
	exit;
} elsif ($options{h}) {
	print <<EOF;

$0: Typical Hello World program

Syntax: $0 [-h|-v|-l <language>]

	-h : This help message
	-v : print version on standard output and exit
	-l : turn on international language support
EOF
	exit;
} elsif ($options{l}) {
	if ($options{l} eq "french") {
		print "Bonjour, tout le monde.\n";
	} else {
		die "$0: unsupported language\n";
	}
} else {
	print "Hello World\n";
}