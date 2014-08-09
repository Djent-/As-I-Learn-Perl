#!c:/perl/bin
#menu1.plx
#137
use warnings;
use strict;

my %menu = (
	c => \&customer_menu,
	s => \&sales_menu,
	o => \&orders_menu
);
print "Type c for customer menu, s for sales menu, and o for orders menu\n";
chomp (my $choice = <>);

if (exists $menu{$choice}) {
	# call it
	$menu{$choice}->();
} else {
	print "Unknown option\n";
}

sub customer_menu {
	print "Customer menu.";
}
sub sales_menu {
	print "Sales menu.";
}
sub orders_menu {
	print "Orders menu.";
}