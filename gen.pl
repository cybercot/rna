#!/usr/bin/perl -w
use strict;

open FILE,"<expression.txt" or die "$!";
my $n=0;
while (<FILE>) {
	my @mass=split;
	++$n;
	next if $n==1;
	if ($mass[0] ne '-') {
		my $ras=$mass[3]-$mass[2];
		if ($mass[6] eq 'yes') {print "$mass[0]	$ras\n"}
		else {print "$mass[0]	0\n"}
	}	
}
