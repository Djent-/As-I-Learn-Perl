#!c:/perl64/bin/perl.exe
#gaussian_rand1.plx
#175
use strict;
use warnings;

sub gaussian_rand {
	my ($u1, $u2); # uniformly distributed
	my $w; # variance, weight
	my ($g1, $g2); # gaussian-distributed
	
	do {
		$u1 = 2 * rand() - 1;
		$u2 = 2 * rand() - 1;
		$w = $u1 * $u1 + $u2 * $u2;
	} while ($w >= 1);
	
	$w = sqrt( (-2 * log($w)) / $w );
	$g2 = $u1 * $w;
	$g1 = $u2 * $w;
	# return both if wanted, else just one
	return wantarray ? ($g1, $g2) : $g1;
}

for (1..5) {
	print gaussian_rand . "\n";
}