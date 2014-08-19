#!c:/perl64/bin/perl.exe
#shufflearray1.plx
#190
use strict;
use warnings;

sub fisher_yates_shuffle {
	my $array = shift;
	my $i;
	for ( $i = @$array; --$i; ) {
		my $j = int rand ($i + 1);
		next if $i == $j;
		@$array[$i, $j] = @$array[$j, $i]
	}
}

my @array = (1..20);
fisher_yates_shuffle( \@array );
print "@array\n";