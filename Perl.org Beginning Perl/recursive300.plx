#!c:/perl/bin
#recursive300.plx
#exercise 13
use warnings;
use strict;
my $last;

one(0);
print "The last subroutine called was $last\n";

sub one {
	my $number = shift;
	print "Subroutine 1, $number\n";
	if ($number < 300) {
		two(++$number)
	} else {
		$last = 1;
	}
}

sub two {
	my $number = shift;
	print "Subroutine 2, $number\n";
	if ($number < 300) {
		three(++$number)
	} else {
		$last = 2;
	}
}

sub three {
	my $number = shift;
	print "Subroutine 3, $number\n";
	if ($number < 300) {
		one(++$number)
	} else {
		$last = 3;
	}
}