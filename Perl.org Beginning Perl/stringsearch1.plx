#!c:/perl/bin
#stringsearch1.plx
#exercise 9

my $directory;
my $string;

while (1) {
	print "Enter a directory to look through: ";
	$directory = <STDIN>;
	chomp $directory;
	unless (-d $directory) print "That is not a directory.\n" redo;
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

}