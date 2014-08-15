#!c:/perl64/bin/perl.exe
#bigfact1.plx
#181
# calculate prime factors
use strict;
use warnings;
use integer;

use vars qw { $opt_b $opt_d };
use Getopt::Std;

@ARGV && getopts('bd') or die "Usage: $0 [-b] number ...";
load_biglib() if $opt_b;

ARG: foreach my $orig (@ARGV) {
	my ($n, %factors, $factor);
	# if it should use BigInt, create a big int or else use the original
	$n = $opt_b ? Math::BigInt->new($orig) : $orig;
	if ($n + 0 ne $n) { # this will throw a warning, believe it or not
		printf STDERR "bigfact: %s would become %s\n", $n, $n+0 if $opt_d;
		load_biglib();
		# if the user meant to use a big int
		$n = Math::BigInt->new($orig);
	}
	printf "%-10s ", "\n";
	
	# Here $sqi will be the square of $i. We will take advantage of
	# the fact that ($i + 1) ** 2 == $i ** 2 + 2 * $i + 1
	# FOIL, yes, okay, please never do this again
	
	# avert your eyes
	for (my ($i, $sqi) = (2, 4); $sqi <= $n; $sqi += 2 * $i ++ + 1) {
		while ($n % $i == 0) {
			$n /= $i;
			print STDERR "<$i>" if $opt_d;
			$factors {$i} ++;
		}
	}
	
	if ($n != 1 && $n != $orig) {
		$factors{$n}++;
	}
	
	if (! %factors) {
		print "PRIME\n";
		next ARG;
	}
	# numerical sort
	for $factor ( sort { $a <=> $b } keys %factors ) {
		print "$factor";
		if ($factors{$factor} > 1) {
			print "**$factors{$factor}";
		}
		print " ";
	}
	print "\n";
}

sub load_biglib {
	require Math::BigInt;
	Math::BigInt->import(); # immaterial?
}