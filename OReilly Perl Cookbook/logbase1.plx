#!c:/perl64/bin/perl.exe;
#logbase1.plx
#177
use warnings;
use strict;
use POSIX qw(log10);

# for logarithms to the base e use the built in log
my $log_e = log(1);
print $log_e . "\n";

# for logarithms to base 10, use POSIX's log10
my $log_10 = log10(30);
print $log_10 . "\n";

sub log_base {
	my ($base, $value) = @_;
	return log($value)/log($base);
}

print log_base(2, 10);