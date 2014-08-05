#!usr/bin/perl
#matchtest1.plx
use warnings;
use strict;

$_ = q("I onder waht the Entish is for 'yes' and 'no'," he thought.);
# Tolkien

print "Enter some text to find: ";
my $pattern = <STDIN>;
chomp($pattern);

if (/$pattern/) {
	print "The text matches the pattern '$pattern'.\n";
} else {
	print "'$pattern' was not found.\n";
}