#!c:/perl/bin
#chess1.plx
#118
use warnings;
use strict;

my @chessboard;
my @back = qw(R N B Q K N B R);
for (0..7) {
	$chessboard[0]->[$_] = "W". $back[$_]; # White Back Row
	$chessboard[1]->[$_] = "WP";		   # White Pawns
	$chessboard[6]->[$_] = "BP";		   # Black Pawns
	$chessboard[7]->[$_] = "B". $back[$_]; # Black Back Row
}

while (1) {
	# Print board
	for my $i (reverse (0..7)) { # Row
		for my $j (0..7) { # Column
			if (defined $chessboard[$i]->[$j]) {
				print $chessboard[$i]->[$j];
			# Test modulo for even and odd
			} elsif ( ($i %2) == ($j %2) ) {
				print ",,";
			} else {
				print "  ";
			}
			print " "; # End of cell
		}
		print "\n"; # End of row
	}
	print "\nStarting square[x,y]: ";
	# defaults to STDIN
	my $move = <>;
	# move matches any number of spaces followed by a digit 1-8
	# followed by a comma followed by a digit 1-8
	last unless ($move =~ /^\s*([1-8]),([1-8])/);
	my $startx = $1 - 1; my $starty = $2 - 1;
	
	unless (defined $chessboard[$starty]->[$startx]) {
		print "There's nothing on that square!";
		next;
	}
	print "\nEnding square [x,y]: ";
	$move = <>;
	last unless ($move =~ /([1-8]),([1-8])/);
	my $endx = $1 - 1; my $endy = $2 - 1;
	
	# Put starting square on ending square.
	$chessboard[$endy]->[$endx] = $chessboard[$starty]->[$startx];
	# Remove from old square
	undef $chessboard[$starty]->[$startx];
}

