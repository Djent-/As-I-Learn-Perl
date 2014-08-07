#!/usr/bin/perl
#badopen.plx
use warnings;
use strict;
open BAD, "/temp" or die $!;