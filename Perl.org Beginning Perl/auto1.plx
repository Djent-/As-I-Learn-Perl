#!usr/bin/perl
#auto1.plx
$a = 4;
$b = 10;
print $a, " ", $b, "\n";
$b = $a++;
print "After incrementing: ", $a, " and ", $b, "\n";
$b=++$a*2;
# increments $a and then multiplies by 2
# a = a + 1; b = a * 2;
print "Now we have ", $a, " and ", $b, "\n";
$a =--$b+4;
# increments b then adds 4
# b = b - 1; a = b + 4;
print "Finally we have ", $a, " and ", $b, "\n";