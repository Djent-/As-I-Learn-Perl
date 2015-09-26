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

# The default key bindings for text boxes are emacs-ish

# The 'o' in 'osoe' means optionally, so the scrollbars will only appear on the
# south ('s') and east ('e') sides when needed.

my($InputText) = $right_frame->Scrolled('TextUndo', -height => '1', -width => '1', -scrollbars => 'osoe');

# We use the Text widget here because we do not need to edit anything in the widget. We could
# have used a read-only text widget here too (ROText).

my($OutputText) = $right_frame->Scrolled('Text', -height => '1', -width => '1', -scrollbars => 'osoe');

# Load filenames into the listbox:

opendir DIR, ".";
$ListBox->insert('end', grep { -f $_ } readdir DIR);
close DIR;

# Binding subs to events:

# Every widget either creates or reacts to events.

# Callbacks are subs that are used to react to events. Callbacks are bound to widgets.

# You can use anonymous subs or reference the callback sub when creating callbacks.

# Left mouse button loads file and eval's if it has a .pl suffix.

$ListBox->bind( '<ButtonRelease-1>', [/&OnLoad] );

# Ctrl-L: eval text widget contents

$mw->bind( 'Tk::TextUndo', '<Control-key-l>', sub { OnEval(); } );

# Ctrl-O: load a text file into the widget

$mw->bind( 'Tk::TextUndo', '<Control-key-o>', sub { OnFileOpen(); } );


