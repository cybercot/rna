#!/usr/bin/perl -w
use strict;

open FILE,"<pca.txt" or die "$!";
while (<FILE>) {
	my @mass=split;
	if ($mass[3]<0) {for (my $i=4; $i<scalar(@mass);++$i) {print "$mass[$i]	"}print "\n"}
}
