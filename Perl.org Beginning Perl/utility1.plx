#!c:/perl64/bin
#utility1.plx
#151
use warnings;
use strict;
use Person9;

my $object = Person->new (
	surname => "Galilei",
	forename => "Galileo",
	address => "9.81 Pisa Apts.",
	occupation => "bombadier"
);
$object->printletter("You owe me money. Please pay it.");