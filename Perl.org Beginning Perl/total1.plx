#!c:/perl/bin
#total1.plx
#120
use warnings;
use strict;

total(111, 107, 105, 114, 69);
total(1...100);

sub total {
	my $total = 0;
	# for $_ in @_ $total = $total + $_
	$total += $_ for @_;
	print "The total is $total\n";
	# total is a weird word
}