#!/usr/bin/perl -w
use strict;

open FILE,"features.txt" or die "$!";
my $n=0;
while (<FILE>) {
	my @mass=split;
	print "runing.....$mass[0]\n";
	++$n;
	system("perl paste.pl <$mass[0]	>$n");
}
