#!c:/perl/bin
#Fibonacci12.plx
#exercise 14
use warnings;
use strict;
sub fib (\@);

my @elements = (1,1);
fib(@elements);
fib(@elements);
fib(@elements);
fib(@elements);
fib(@elements);
fib(@elements);
fib(@elements);
fib(@elements);
fib(@elements);
fib(@elements);
print "@elements";

sub fib (\@) {
	my $array = shift;
	my ($a, $b) = (pop @$array, pop @$array);
	push @$array, $b;
	push @$array, $a;
	push @$array, ($b + $a);
}