#!/usr/bin/perl
#guessnum2.plx
use warnings;
use strict;

my $target = 12;
our $guess;
print "Guess my number!\n";

do {
	print "Enter your guess: ";
	$guess = <STDIN>;
	$guess > $target and print "Your number is bigger than my number.\n";
	$guess < $target and print "Your number is less than my number.\n";
} while ($guess != $target);
print "You guessed correctly!";