#!usr/bin/perl
#match3.plx
use warnings;
use strict;

$_ = q("I wonder what the Entish is for 'yes' and 'no'," he thought.);
# Tolkien

# full stops need to be escaped
my $pattern = "\.\.\.";

if (/$pattern/) {
	print "The text matches the pattern '$pattern'.\n";
} else {
	print "'$pattern' was not found.\n";
}

# $ looks for the preceeding at the end of the string
$pattern = "\.\$";

if (/$pattern/) {
	print "The text matches the pattern '$pattern'.\n";
} else {
	print "'$pattern' was not found.\n";
}