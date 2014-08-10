#!c:/perl64/bin
#classatr2.plx
#150
use warnings;
use strict;
use Person7;

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

print "\nPeople we know:\n";
# for every $person in Person::@Everyone
for my $person(Person->everyone) {
	print $person->forename, " ", $person->surname, "\n";
}