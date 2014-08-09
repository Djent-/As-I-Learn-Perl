#!c:/perl/bin
#seconds3.plx
#exercise 12
use warnings;
use strict;
my $seconds;

sub secs2hms {
	my ($h,$m);
	my $seconds = shift;
	$h = int($seconds/(60*60));
	$seconds %= 60*60;
	$m = int($seconds/60);
	$seconds %= 60;
	if (wantarray) {
		return ($h,$m,$seconds);
	}
	return "$h hours, $m minutes and $seconds seconds";
}

sub get_input {
	print "Enter a number of seconds: ";
	chomp ($seconds = <>);
	return secs2hms($seconds);
}

while (1) {
	my ($h,$m,$s) = get_input();
	print "$seconds seconds is $h hours, $m minutes, and $s seconds\n";
}