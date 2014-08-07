#!/usr/bin/perl
#logfile1.plx
use warnings;
use strict;

my $logging = "screen"; # Change this to "file" to send the log to a file

if ($logging eq "file") {
	open LOG, "> output1.log" or die $!;
	select LOG;
}

print "Program started: ", scalar localtime, "\n";
sleep 3;
print "Program finished: ", scalar localtime, "\n";

select STDOUT;