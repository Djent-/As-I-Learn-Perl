#!/usr/bin/perl
#regexpdescriptions1.plx
use warnings;
use strict;

my $var = "Regular expressions are slowing me down";
# print whether $var ends with a word
print $var =~ /(\w+)$/, "\n";

my $code = "x = x + 2";
# print whether $code starts with a #
print $code !~ /^#/, "\n";

$code = "# add 2 to x";
print $code !~ /^#/, "\n";

my $string = "###I#LOVE###OCTOTHORPES#########";
# replace any sequence of #s longer than 2 with a single #
print $string =~ s/#{2,}/#/g, "\n";