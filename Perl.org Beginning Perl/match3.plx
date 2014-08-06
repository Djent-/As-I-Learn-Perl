#!/usr/bin/perl
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

# ^ looks for the following at the beginning of the string
$pattern = "^I";

if (/$pattern/) {
	print "The text matches the pattern '$pattern'.\n";
} else {
	print "'$pattern' was not found.\n";
}

# will find wander, wonder, and winder
$pattern = "w[aoi]nder";

if (/$pattern/) {
	print "The text matches the pattern '$pattern'.\n";
} else {
	print "'$pattern' was not found.\n";
}

# ^ inside [] means to search for anything except the following
$pattern = "th[^eo]";

if (/$pattern/) {
	print "The text matches the pattern '$pattern'.\n";
} else {
	print "'$pattern' was not found.\n";
}

# \d searches for digits 0-9
$pattern = "\\d";

if (/$pattern/) {
	print "The text matches the pattern '$pattern'.\n";
} else {
	print "'$pattern' was not found.\n";
}

# a space followed by 5 word characters followed by a space
$pattern = "\\s\\w\\w\\w\\w\\w\\s";

if (/$pattern/) {
	print "The text matches the pattern '$pattern'.\n";
} else {
	print "'$pattern' was not found.\n";
}

# a word boundary followed by a word character followed by a word boundary
$pattern = "\\b\\w\\b";

if (/$pattern/) {
	print "The text matches the pattern '$pattern'.\n";
} else {
	print "'$pattern' was not found.\n";
}

# r followed by any two characters followed by an h
$pattern = "r..h";

if (/$pattern/) {
	print "The text matches the pattern '$pattern'.\n";
} else {
	print "'$pattern' was not found.\n";
}

$pattern = "[[:upper:]][[:lower:]]";

if (/$pattern/) {
	print "The text matches the pattern '$pattern'.\n";
} else {
	print "'$pattern' was not found.\n";
}

# search for either "yes" or "maybe"
$pattern = "yes|maybe";

if (/$pattern/) {
	print "The text matches the pattern '$pattern'.\n";
} else {
	print "'$pattern' was not found.\n";
}

# search for "ye" followed by "s" or "t"
$pattern = "ye(s|t)";

if (/$pattern/) {
	print "The text matches the pattern '$pattern'.\n";
} else {
	print "'$pattern' was not found.\n";
}

# search for "this," "that," or "the other"
$pattern = "th(is|at|e other)";

if (/$pattern/) {
	print "The text matches the pattern '$pattern'.\n";
} else {
	print "'$pattern' was not found.\n";
}

# search for "she" or "he"
# the "s" is optional in the search
$pattern = "\\bs?he\\b";

if (/$pattern/) {
	print "The text matches the pattern '$pattern'.\n";
} else {
	print "'$pattern' was not found.\n";
}

# did he say "what the Entis is" or "what the Entish word is"?
$pattern = "what the Entish (word )?is";

if (/$pattern/) {
	print "The text matches the pattern '$pattern'.\n";
} else {
	print "'$pattern' was not found.\n";
}

# find a word boundary followed by any number of word characters
# followed by another word boundary
$pattern = "\\b\\w+\\b";

if (/$pattern/) {
	print "The text matches the pattern '$pattern'.\n";
} else {
	print "'$pattern' was not found.\n";
}

# search at the beginning of the string for any or no whitespace
# characters, and then a capital letter
$pattern = "^\\s*[A-Z]";

if (/$pattern/) {
	print "The text matches the pattern '$pattern'.\n";
} else {
	print "'$pattern' was not found.\n";
}