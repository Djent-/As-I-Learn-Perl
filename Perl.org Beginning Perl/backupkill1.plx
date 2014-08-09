#!c:/perl/bin
#backupkill1.plx
#136
use warnings;
use strict;
use File::Find;
find ( \&callback, "/") ;

sub callback {
	# delete the file if it ends with the .bak extension
	unlink $_ if /\.bak$/;
}