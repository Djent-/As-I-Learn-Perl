#!/usr/bin/perl

# Tutorial from http://www.perlmonks.org/?node_id=181977#basics

use warnings;
use strict;
use Tk;

my $mw = new MainWindow;
$mw->Label(-text => 'Hello World!')->pack;
$mw->Button(-text => 'quit', -command => sub{exit} )->pack;
MainLoop;
