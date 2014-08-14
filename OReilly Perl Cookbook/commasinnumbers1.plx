#!c:/perl64/bin/perl.exe
#commasinnumbers1.plx
#180
use warnings;
use strict;

sub commify {
	my $text = reverse $_[0];
	# add a comma after every sequence of three digits
	# unless it occurs before a decimal point
	# and I don't know what the middle condition means
	$text =~ s/(\d\d\d)(?=\d)(?!\d*\.)/$1,/g;
	return scalar reverse $text;
}

my $text = "10000.00010";
print commify($text);