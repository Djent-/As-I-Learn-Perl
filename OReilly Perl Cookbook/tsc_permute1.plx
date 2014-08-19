#!c:/perl64/bin/perl.exe -n
#tsc_permute1.plx
#191
#page 198
permute([split], []);
sub permute {
	my @items = @{ $_[0] };
	my @perms = @{ $_[1] };
	unless (@items) {
		print "@perms\n";
	} else {
		my (@newitems, @newperms, $i);
		foreach $i (0 .. $#items) {
			@newitems = @items;
			@newperms = @perms;
			unshift(@newperms, splice(@newitems, $i, 1));
			permute([@newitems], [@newperms]);
		}
	}
}