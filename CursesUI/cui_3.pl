#!/usr/bin/perl

use strict;
use warnings;
use Curses::UI;

my $cui = new Curses::UI( -color_support => 1 );

# create a menu

my @menu = (
	{ -label => 'File',
	  -submenu => [
		{ -label => 'Exit	^Q', -value => \&exit_dialog }
			]
	},
);

# Dialogs

sub exit_dialog()
{
	my $return = $cui->dialog(
		-message => "Do you really want to quit?",
		-title => "Are you sure???",
		-buttons => ['yes','no'],
	);

	exit(0) if $return;
}

# add the menubar to cui

# arguments:
#	internal name of widget
#	widget type
#	structure
#	color

my $menu = $cui->add(
	'menu','Menubar',
	-menu => \@menu,
	-fg => "blue",
	);

# add a window

my $win1 = $cui->add(
	'win1', 'Window',
	-border => 1,
	-y => 1,
	-bfg => 'red',
	);

# add a widget

# -text supplies the initial text in the texteditor

my $texteditor = $win1->add("text", "TextEditor",
			-text => "Here is some text\n"
					. "And some more");

# Keybindings

# the control key is \c
$cui->set_binding(sub {$menu->focus()}, "\cX");
$cui->set_binding( \&exit_dialog, "\cQ");

# the final steps

$texteditor->focus();
$cui->mainloop();

# Copyright Marcus Thiesen
