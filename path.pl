#!/usr/bin/perl -w
use strict;

open FILE,"<promoters.txt" or die "$!";
while (<FILE>) {
	my @mass=split;
	my $ras=0;
	if ($mass[10] eq 'yes') {$ras=$mass[7]-$mass[6]}
	print "$mass[11]	$mass[4]	$mass[5]	$ras\n"
}
