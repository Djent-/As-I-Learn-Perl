#!c:/perl64/bin
#classatr1.plx
#149
use warnings;
use strict;
use Person6;

print "In the beginning: ", Person->headcount, "\n";
my $object = Person->new (
	surname => "Galilei",
	forename => "Galileo",
	address => "9,81 Pisa Apts.",
	occupation => "bombadier"
);
print "Population now: ", Person->headcount, "\n";

my $object2 = Person->new (
	surname => "Einstein",
	forename => "Albert",
	address => "9E16, Relativity Drive",
	occupation => "Plumber"
);
print "Population now: ", Person->headcount, "\n";