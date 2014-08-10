#!c:/perl64/bin
#inherit3.plx
#154
use warnings;
use strict;
use Employee3;

my $dilbert = Employee->new (
	surname => "Dilbert",
	employer => "Dogbert",
	salary => "43000"
);

my $boss = $dilbert->employer;
$boss->address("3724 Cubeville");

print "Initial salary: ", $dilbert->salary, "\n";
# Employee->raise returns $self
print "Salary after raise: ", $dilbert->raise->salary, "\n";