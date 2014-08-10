#c:/perl64/bin
#buggy1.plx
#142
sub options;
sub read;
sub list;
sub delete;
sub clear;
sub getkey;
sub getval;

my %options = (
	o => \&options,
	r => \&read,
	l => \&list,
	w => \&write,
	d => \&delete,
	x => \&clear
);

my %hash;

until (/^q/i) {
	print "What would you like to do? ('o' for options): ";
	$_ = <>;
	
	if (exists $options{$_}) {
		$options{$_}->();
	} else {
		print "Sorry, not a recognized option.\n";
	}
}

sub options {
	print <<EOF;
	Options available:
		o - view options
		r - read entry
		l - list all entries
		w - write entry
		d - delete entry
		x - delete all entries
EOF
}

sub read {
	my $keyname = getkey();
	if (exists $hash{$keyname}) {
		print "Element '$keyname' has value $hash{$keyname}\n";
	} else {
		print "Sorry, element $keyname does not exist.\n";
	}
}

sub list {
	foreach (sort keys(%hash)) {
		print "$_ => $hash{$_}\n";
	}
}

sub write {
	my $keyname = getkey();
	my $keyval = getval();
	if (exists $hash{$keyname}) {
		print "Sorry, this element already exists.\n";
	} else {
		$hash{$keyname} = $keyval;
	}
}

sub delete {
	my $keyname = getkey();
	if (exists $hash{$keyname}) {
		print "This will delete the entry $keyname.\n";
		delete $hash{$keyname};
	}
}

sub clear {
	undef %hash;
}

sub getkey {
	print "Enter the key name of element: ";
	chomp ($_ = <>);
}

sub getval {
	print "Enter the value of element: ";
	chomp ($_ = <>);
}