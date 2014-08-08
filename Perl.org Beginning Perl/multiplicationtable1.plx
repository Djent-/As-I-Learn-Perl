#c:/perl/bin
#multiplicationtable1.plx
#exercise 10
use warnings;
use strict;

my @table;
$table[1] = [qw(one two three four five six)];
$table[2] = [qw(two four six eight ten twelve)];
$table[3] = [qw(three six nine twelve fifteen eighteen)];
$table[4] = [qw(four eight twelve sixteen twenty twenty-four)];
$table[5] = [qw(five ten fifteen twenty twenty-five thirty)];
$table[6] = [qw(six twelve eighteen twenty-four thirty thirty-six)];

while (1) {
	print "Enter a multiplication problem [2 x 6]: ";
	my $problem = <>;
	chomp $problem;
	if ($problem =~ /([1-6])\s*x\s*([1-6])/) {
		print "The answer is ", $table[$2]->[$1 - 1], "\n";
	} else {
		last;
	}
}