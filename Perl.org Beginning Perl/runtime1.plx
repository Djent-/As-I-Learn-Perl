#c:/perl/bin
#runtime1.plx
#129
use warnings;
use strict;

my $x = 10;
$_ = "alpha";

{
	my $x = 20;
	local $_ = "beta";
	somesub();
}

somesub();

sub somesub {
	print "\$x is $x\n";
	print "\$_ is $_\n";
}