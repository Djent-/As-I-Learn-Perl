#!C:/perl/bin
#inventory1.plx
use warnings;
use strict;

my %inventory;
print "Enter individual items, followed by a new line.\n";
print "Enter a blank line to finish.\n";
while (1) {
	my $item = <STDIN>;
	chomp $item;
	last unless $item;
	# lc converts $item to lowercase
	$inventory{lc $item}++;
}

open (SORT, "| perl sort4.plx") or *SORT = *STDOUT;
select *SORT;
while (my ($item, $quantity) = each %inventory) {
	if ($quantity > 1) {
		# substitute the first word with itself plus an 's'
		$item =~ s/^(\w+)\b/$1s/
	}
	print "$item: $quantity\n";
}