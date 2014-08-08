#!c:/perl/bin
#seconds1.plx
#122
use warnings;
use strict;

my ($hours, $minutes, $seconds) = secs2hms(3723);
print "3723 seconds is $hours hours, $minutes minutes and $seconds seconds\n";

sub secs2hms {
	my ($h,$m);
	# subroutines default to reading from @_ instead of @ARGV
	my $seconds = shift;
	# int() appears to be floor()
	$h = int($seconds/(60*60));
	# does what you'd expect it to
	$seconds %= 60*60;
	$m = int ($seconds/60);
	$seconds %= 60;
	($h,$m,$seconds);
}