#Class 3
package Person;
# Class for storing data about a person
#person4.pm
use warnings;
use strict;

sub new {
	# class name is the first argument to new()
	my $class = shift;
	my $self = {@_};
	bless($self, $class);
	return $self;
}

sub surname {
	my $self = shift;
	return $self->{surname};
}

1;