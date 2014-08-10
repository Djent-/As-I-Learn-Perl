#!c:/perl64/bin
#inherit1.plx
#152
use warnings;
use strict;
use Employee1;

my $object = Employee->new (
	surname => "Galilei",
	forename => "Galileo",
	address => "9.81 Pisa Apts.",
	occupation => "bombadier"
);

$object->printletter("You owe me money. Please pay it.");