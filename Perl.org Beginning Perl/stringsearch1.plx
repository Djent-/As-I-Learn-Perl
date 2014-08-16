#!c:/perl/bin
#stringsearch1.plx
#exercise 9

my $directory;
my $string;

while (1) {
	print "Enter a directory to look through: ";
	$directory = <STDIN>;
	chomp $directory;
	if (not -d $directory) {
		print "That is not a directory.\n";
		redo;
	}
	last;
}

while (1) {
	print "Enter a string to search for: ";
	$string = <STDIN>;
	chomp $string;
	last;
}

opendir DH, $directory or die $!;
while ($_ = readdir(DH)) {
	# skip if it's the parent directory
	next if $_ eq "." or $_ eq "..";
	# skip if the path is a directory
	next if -d $_;
	my $filename = $_;
	# open the file or print error
	open FILE, "$directory/$filename" or die $_ . " " . $!;
	my @file = <FILE>;
	# cycle over the lines in the file
	for (0..$#file) {
		# if the line contains the pattern, print the filename
		# and exit
		if ($file[$_] =~ /$string/) {
			print $filename, "\n";
			last;
		}
	}
}