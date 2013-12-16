#!/usr/bin/perl -w
use strict;

open FILE,"pca.txt" or die "$!";
while (<FILE>) {
	my @mass=split;
	my $check=0;
	if ($mass[3]!=0) {$check=1}
	if ($check==1) {
		for (my $i=3; $i<scalar(@mass); ++$i) {print "$mass[$i]	"}
		print "\n"
	}
}
