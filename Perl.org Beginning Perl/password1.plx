#!usr/bin/perl
#password1.plx
use warnings;
use strict;

my $password = "foxtrot";
print "Enter the password: ";
my $guess = <STDIN>;
chomp $guess;
if ($password eq $guess) {
	print "Pass\n";
}
if ($password ne $guess) {
	die "Fail";
}