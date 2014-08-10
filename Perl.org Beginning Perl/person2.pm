#Class 1
package Person;
# Class for storing data about a person
#person2.pm
use warnings;
use strict;

sub new {
	my $self = {};
	bless ($self, "Person");
	return $self;
}

# Return true to let perl know everything worked
1;