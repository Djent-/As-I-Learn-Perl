#!c:/perl64/bin/perl.exe
#tempfile1.plx
#204
# page 336
use warnings;
use strict;
use IO::File;

my $fh = IO::File->new_tmpfile or die "IO::File->new_tmpfile: $!";
$fh->autoflush(1);
my $i = 0;
print $fh "$i\n" while $i++ < 10;
seek($fh, 0, 0) or die "seek: $!";
print "Tmp file has: ", <$fh>;