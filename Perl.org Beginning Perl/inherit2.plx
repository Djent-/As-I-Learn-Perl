#!c:/perl64/bin
#inherit2.plx
#153
use warnings;
use strict;
use Employee2;

my $object = Employee->new (
	surname => "Galilei",
	forename => "Galileo",
	address => "9.81 Pisa Apts.",
	occupation => "bombadier"
);

$object->salary("12000");
print "Initial salary: ", $object->salary, "\n";
# Employee->raise returns $self
print "Salary after raise: ", $object->raise->salary, "\n";