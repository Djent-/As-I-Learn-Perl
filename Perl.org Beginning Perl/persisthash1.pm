#Class 13
package PersistHash;
#persisthash1.pm
use strict;
use warnings;
use Tie::Hash;
our @ISA = qw(Tie::StdHash);

sub TIEHASH {
	my $class = shift;
	my %realhash;
	my $file = shift;
	if ( -e $file ) {
		open FH, $file or die $!;
		while (<FH>) {
			chomp;
			my ($k, $v) = split /:/,$_,2;
			$realhash{$k} = $v;
		}
	} # Otherwise we'll create it when we're done
	$realhash{__secret__} = $file; # Need to stash this for when we write
	return bless \%realhash, $class;
}

sub DESTROY {
	my $self = shift;
	my %realhash = %$self;
	my $file = $realhash{__secret__}; # extract the filename
	delete $realhash{__secret__}; # don't write the filename to disk
	open FH, ">$file" or die $!;
	for (keys %realhash) {
		print FH $_, ":", $realhash{$_}, "\n";
	}
	close FH;
}