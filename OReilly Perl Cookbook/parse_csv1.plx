#!c:/perl64/bin/perl.exe
#parse_csv1.plx
#172
use warnings;
use strict;
use Text::ParseWords;

sub parse_csv1 {
	my $text = shift;
	my @new = ();
	push(@new, $+) while $text =~ m{
		# the first part groups the phrase inside the quotes.
		"([^\"\\]*(?:\\.[^\"\\]*)*)",?
			| ([^,]+),?
			| ,
		}gx;
		push(@new, undef) if substr($text, -1, 1) eq ',';
		return @new; # list of values that were comma-separated
}

# using Text::ParseWords module
sub parse_csv2 {
	return quoteword(",",0, $_[0]);
}

print "CSV 1:\n";
my $line = q<XYZZY,"","O'Reilly, Inc","Wall, Larry","a \"glug\" but,",5,
	"Error, Core Dumped">;
my @fields = parse_csv1($line);
for (my $i = 0; $i < @fields; $i++) {
	print "$i : $fields[$i]\n";
}
print "CSV 2:\n";
$line = q<XYZZY,"","O'Reilly, Inc","Wall, Larry","a \"glug\" but,",5,
	"Error, Core Dumped">;
@fields = parse_csv2($line);
for (my $i = 0; $i < @fields; $i++) {
	print "$i : $fields[$i]\n";
}