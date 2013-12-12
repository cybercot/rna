#!/usr/bin/perl -w
use strict;

my %hash;
while (<>) {
	my @mass=split;
	if (not exists $hash{$mass[4]}) {$hash{$mass[4]}=$mass[5]}
	else {
		print "$mass[4]\n"
	}
}
