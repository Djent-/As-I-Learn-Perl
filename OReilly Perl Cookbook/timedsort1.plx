#!c:/perl64/bin/perl.exe
#timedsort1.plx
#page 139
#183
use warnings;
use strict;
use Time::HiRes qw(gettimeofday);
# take mean of sorting time
my $size = 500;
my $number_of_times = 100;
my $total_time = 0;

for (my $i = 0; $i < $number_of_times; $i++) {
	my (@array, $j, $begin, $time);
	# populate array
	@array = ();
	for ( $j = 0; $j < $size; $j++) {
		push(@array, rand);
	}
	
	# sort it
	$begin = gettimeofday;
	# numerical sort
	@array = sort { $a <=> $b} @array;
	$time = gettimeofday-$begin;
	$total_time += $time;
}

printf "On average, sorting %d random numbers takes %.5f seconds\n",
	$size, ($total_time/$number_of_times);