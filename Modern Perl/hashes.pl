#!usr/bin/perl -w

use warnings;
use strict;

my %favorite_flavors;
$favorite_flavors{Gabi} = 'Dark chocolate raspberry';
$favorite_flavors{Annette} = 'French vanilla';
print "$favorite_flavors{Annette}\n";

# same as

my %favorite_flavours = (
	'Gabi',		'Dark chocolate raspberry',
	'Annette',	'French vanilla',
	);
print "$favorite_flavors{Annette}\n";

# same as

# with 'fat comma', which also quotes the previous bareword
my %favourite_flavors = (
	Gabi => 'Dark chocolate raspberry',
	Annette => 'French vanilla',
	);
print "$favorite_flavors{Annette}\n";
	
####

sub name { 'Leonardo' }

my %address = (
	name => '1123 Fib place'
	);
# key to this hash will be the word 'name', not the return value of &name

my %address1 = (
	name() => '1123 Fib place'
	);