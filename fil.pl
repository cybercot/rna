#!/usr/bin/perl -w
use strict;

open FILE,"<k_3.txt" or die "$!";
my %hash;
while (<FILE>) {
	my @mass=split;
	$hash{$mass[8]}=$_;
}
my $n=0;
while (<>) {
	my @mass=split;
	if (not exists $hash{$mass[11]}) {
		my $ras=$mass[7]-$mass[6];
		for (my $i=4; $i<=10; ++$i) {print "$mass[$i]	"}
		print "$ras\n"		
	}
}
