#!c:/perl/bin
#directory1.plx
#108
use warnings;
use strict;

print "Contents of the current directory: \n";
opendir DH, "." or die "Couldn't open the current directory: $!";
while ($_ = readdir(DH)) {
	next if $_ eq "." or $_ eq "..";
	print $_, " " x (30 - length($_));
	print "d" if -d $_;
	# _ is the default filehandle for filetests
	# it refers to the last file explicitly tested
	# we can use _ for $_ as long as we're referring to the same file
	print "r" if -r _;
	print "w" if -w _;
	print "x" if -x _;
	print "o" if -o _;
	print "\t";
	print -s _ if -r _ and -f _;
	print "\n";
}