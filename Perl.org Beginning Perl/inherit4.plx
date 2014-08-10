#!c:/perl64/bin
#inherit4.plx
#exercise 16
use warnings;
use strict;
use Employee3;

my $dilbert = Employee->new (
	surname => "Dilbert",
	employer => "Dogbert",
	salary => "43000"
);

my $boss = $dilbert->employer;
print $boss->surname, "\n";
$boss->address("3724 Cubeville");
print $boss->address, "\n";
$boss->phone_no("1-800-DoNot-Call");
print $boss->phone_no, "\n";
$boss->occupation("Manager");
print $boss->occupation, "\n";