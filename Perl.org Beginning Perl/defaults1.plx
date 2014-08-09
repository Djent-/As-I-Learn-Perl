#!c:/perl/bin
#defaults1.plx
#134
use warnings;
use strict;

sub log_warning {
	my $message = shift || "Something's wrong";
	my $time = shift || localtime; # default to now
	print "[$time] $message\n";
}

log_warning("Klingons on the starboard bow", "Stardate 60030.2");
log_warning("/earth is 99% full, please delete more people");
log_warning();