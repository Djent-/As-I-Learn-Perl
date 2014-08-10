#Class 12
package Autoincrement;
#autoincrement1.pm
use warnings;
use strict;

# Called when a program ties a scalar to a class
sub TIESCALAR {
	my $class = shift; # no parameters
	my $realdata = 0;
	return bless \$realdata, $class;
}

sub FETCH {
	my $self = shift;
	# increment and return a reference to $self
	return $$self++;
}

sub STORE {
	my $self = shift;
	$$self = 0;
}

1;