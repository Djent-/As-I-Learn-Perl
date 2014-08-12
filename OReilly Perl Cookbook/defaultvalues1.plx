#!c:/perl64/bin/perl.exe
#defaultvalues1.plx
#158
use warnings;
use strict;

my ($a, $b, $c) = ("Overwrite", 0, "New string");
print $a . "\n";

# "||" has higher precedence than "="
# "or" has lower precedence than "="
$a = $b || $c;
print $a . "\n";

my ($x, $y) = ("Already true", "Stays in y");
print $x . "\n";

# $x = $y if $x is not already true
$x ||= $y;
print $x . "\n";

print $a . "\n";
# if false is a valid value, but undefined isn't
# if $b is defined then $a = $b else $a = $c
$a = defined($b) ? $b : $c;
print $a . "\n";

# Perl's || operator returns the first operand if that operand is true
# 	otherwise, it returns the second operand
# Perl's && operator returns the last evaluated expression
# 	there aren't many interesting false values

my @a = ();
my @b = (1,2,3);

# can't use ||= because it puts operands into scalar context
@a = @b unless @a;
print "@a\n";

@a = ();
my @c = (3,4,5);
@a = @b ? @b : @c;
print "@a\n";