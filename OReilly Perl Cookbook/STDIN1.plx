#!c:/perl64/bin/perl.exe
#STDIN1.plx
#203
# page 323
use warnings;
use strict;

while (<STDIN>) {
	unless (/\d/) {
		warn "No digit found.\n";
	}
	print "Read: ", $_;
}
END { close (STDOUT) or die "couldn't close STDOUT: $!"}