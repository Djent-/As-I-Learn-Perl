#!usr/bin/perl
#auto2.plx
use warnings;
$a = "A9"; print ++$a, "\n";
$a = "bz"; print ++$a, "\n";
$a = "Zz"; print ++$a, "\n";
$a = "z9"; print ++$a, "\n";
$a = "9z"; print ++$a, "\n";

# ++ will autoincrement letters too
# I don't understand what's going on in the last example

# Output: 10
# (My) expected output: 10a (?)