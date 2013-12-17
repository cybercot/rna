#!/usr/bin/perl -w
use strict;

open FILE,"<cpg.txt" or die "$!";
my %hash;
while (<FILE>) {
	my @mass=split;
	$hash{$mass[3]}+=1
}

open FILE2,"<pca.txt" or die "$!";
while (<FILE2>) {
	my @mass=split;
	my $test=0;
	if (exists $hash{$mass[0]}) {$test=1}
	for (my $i=0; $i<scalar(@mass);++$i) {print "$mass[$i]	"}
	print "$test\n"
}
