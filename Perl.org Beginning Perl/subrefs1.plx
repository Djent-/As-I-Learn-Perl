#c:/perl/bin
#subrefs1.plx
#131
use warnings;
use strict;

my $a = 5;
# pass a reference rather than the value of the variable
increment(\$a);
print $a;

sub increment {
	my $reference = shift;
	$$reference++;
}