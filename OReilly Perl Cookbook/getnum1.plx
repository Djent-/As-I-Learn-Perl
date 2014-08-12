#!c:/perl64/bin/perl.exe
#getnum1.plx
#173
use warnings;
use strict;
use POSIX qw(strtod);

sub getnum {
	my $str = shift;
	$str =~ s/^\s+//;
	$str =~ s/\s+$//;
	$! = 0;
	my ($num, $unparsed) = strtod($str);
	if (($str eq '') || ($unparsed != 0) || $!) {
		return;
	} else {
		return $num
	}
}

sub is_numeric {
	defined scalar &getnum
}

print is_numeric(1.2) . "\n";
print is_numeric("111") . "\n";