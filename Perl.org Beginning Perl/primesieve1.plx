#!/usr/bin/perl
#primesieve1.plx
#exercise 7
use warnings;
use strict;

my $position = 2;
print "Enter a number to which all primes will be listed: ";
my $finish = <STDIN>;
chomp($finish);
my @integers = ($position..$finish);
my @primes;

while (@integers) {
	push @primes, shift @integers;
	print "primes: @primes\n";
	for $_ (0..$#integers) {
		$integers[0] % $position != 0 and push @integers, shift @integers;
		$integers[0] % $position == 0 and shift @integers;
		print "integers: @integers\n";
		$_ == $#integers and last;
	}
	$position += 1;
}

print "@primes\n";