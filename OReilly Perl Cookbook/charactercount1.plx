#!c:/perl64/bin/perl.exe
#charactercount1.plx
#160
use warnings;
use strict;

my %seen = ();
my $string = "an apple a day";
foreach my $byte (split //, $string) {
	$seen{$byte}++;
}
print "unique chars are: ", sort(keys %seen), "\n";