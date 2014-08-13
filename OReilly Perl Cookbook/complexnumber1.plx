#!c:/perl64/bin/perl.exe
#complexnumbers1.plx
#178
use Math::Complex;
use warnings;
use strict;

my $a_real = 3;
my $a_imaginary = 5;
# 3 + 5i
my $b_real = 2;
my $b_imaginary = -2;
# 2 - 2i
my $c_real = ( $a_real * $b_real ) - ($a_imaginary * $b_imaginary );
my $c_imaginary = ( $a_real * $b_imaginary ) + ($b_real * $a_imaginary );
print "c = ${c_real}+${c_imaginary}i\n";

my $a = Math::Complex->new(3,5);
my $b = Math::Complex->new(2,-2);
my $c = $a * $b;
print "c = $c\n";

$c = cplx(3,5) * cplx(2,-2);
my $d = 3 + 4*i;
# apparently something changed since the book came out
printf "sqrt($d) = %s\n", sqrt($d);