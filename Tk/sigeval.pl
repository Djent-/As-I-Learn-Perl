#!perl -w

# From the tutorial at http://www.perlmonks.org/?node_id=181977

# sigeval.pl

# This program demonstrates how to put a basic Tk/perl application together.

use strict;
use Tk 800.000;

use Tk::Frame;
use Tk::TextUndo;
use Tk::Text;
use Tk::Scrollbar;
use Tk::Menu;
use Tk::MenuButton;
use Tk::Adjuster;
use Tk::DialogBox;

# Main Window
my $mw = new MainWindow;
$mw->geometry('400x300');

# Application will have three frames:
# 1. A widget to contain the list of files from given directory
# 2. A widget that we can load a text file into or copy paste into
# 3. A widget to display the eval'd Perl code

# Frames

# The Adjuster provides a split between the frames on the left and the right
# so we can resize our frames vertically

my $left_frame = $mw->Frame;
my $adjuster = $mw->Adjuster(-widget => $left_frame, -side => 'left');
my $right_frame = $mw->Frame;

# Menu Bar

# The menubar_menuitems() method returns an anonymous array of all the
# information needed to make a menu bar

my $menu_bar = $mw->Menu( -menuitems => &menubar_menuitems() );

# The configure command tells the window to set the given menubar as the
# current menubar. You can use this to switch between menubars.

$mw->configure(-menu => $menu_bar);

# Use the Scrolled widget to create frames with scroll bars.

# The ListBox is our filename container.
my($ListBox) = $left_frame->Scrolled('ListBox', -height => '0', -width => '0', -scrollbars => 'e');


