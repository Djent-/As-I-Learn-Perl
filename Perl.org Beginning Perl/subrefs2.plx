#!c:/perl/bin
#subrefs2.plx
#132
use warnings;
use strict;
sub increment (\$);

my $a = 5;
increment($a);
print $a;

sub increment(\$) {
	my $reference = shift;
	$$reference++;
}