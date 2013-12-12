#!/usr/bin/perl -w
use strict;

my %hash;
open FILE, "<refGene.txt" or die "$!";
while (<FILE>) {
	my @mass=split;
	$hash{$mass[1]}=$mass[12];
}

while (<>) {
	my @mass=split;
	if (exists $hash{$mass[0]}) {
		if ($mass[6] eq 'yes') {
			print "$mass[0]	$hash{$mass[0]}	$mass[2]	$mass[3]	$mass[4]	$mass[5]	$mass[6]\n"}
	}
}
