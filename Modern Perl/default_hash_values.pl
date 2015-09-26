#!/usr/bin/perl

use warnings;
use strict;

# If your function takes several arguments,
# use a slurpy hash to gather key/value pairs
# into a single hash as named function arguments.

sub make_sundae_1 {
	my %parameters = @_;
	print %parameters . "\n";
}

make_sundae_1 (
	flavor => 'Lemon Burst',
	topping => 'Cookie bits'
);

# This approach allows you to set default values

sub make_sundae {
	my %parameters = @_;
	$parameters{flavor} //= "Vanilla";
	$parameters{topping} //= "Fudge";
	$parameters{sprinkles} //= 100;
	print %parameters . "\n";
}

# or set default values during initialization
# because @_ is added to the hash after the
# default values, overriding them

sub make_sundae_3 {
	my %parameters = (
		flavor => 'Vanilla',
		topping => 'Fudge',
		sprinkles => 100,
		@_,
	);
	print %parameters . "\n";
}