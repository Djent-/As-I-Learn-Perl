#!usr/bin/perl

# This program does not compile on my system.

use warnings;
use strict;
use Curses::UI;

my $cui = new Curses::UI;
my $win = $cui->add('window id', 'Window');
my $passwordentry = $win->add('mypasswordentry', 'Password Entry');
$passwordentry->focus();
my $password = $passwordentry->get();
