#!c:perl64/bin/perl.exe
#randcap1.plx
#168
use strict;
use warnings;

sub randcase {
	rand(100) < 20 ? "\u$_[0]" : "\l$_[0]"
}

s/(\w)/randcase($1)/ge
