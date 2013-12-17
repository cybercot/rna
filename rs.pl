#!/usr/bin/perl -w
use strict;

open FILE,"<pca_new.txt" or die "$!";
while (<FILE>) {
	my @mass=split;
	for (my $i=3;$i<scalar(@mass);$i+=2) {print "$i\n"}
	exit
}
