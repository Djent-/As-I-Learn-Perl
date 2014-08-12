#!c:/perl64/bin/perl.exe
#usingunpack1.plx
#157
use strict;
use warnings;

my $a = "To be or not to be";
# skip the first 6 characters, grab 6 characters
my $b = unpack("x6 A6", $a);
print $b . "\n";

# forward 6, grab 2, backward 5, grab 2
my ($b, $c) = unpack("x6 A2 X5 A2", $a);
print "$b, $c\n";

sub cut2fmt {
	my (@positions) = @_;
	my $template = '';
	my $lastpos = 1;
	foreach my $place (@positions) {
		$template .= "A" . ($place - $lastpos) . " ";
		$lastpos = $place;
	}
	$template .= "A*";
	return $template;
}

my $fmt = cut2fmt(8, 14, 20, 26, 30);
print $fmt . "\n";
# A7 A6 A6 A6 A4 A*
# A* cuts the string up into bits at each of the previous columns
# I assume it returns each as a seperate string