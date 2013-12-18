#!/usr/bin/perl -w
use strict;

open FILE,"<pca.txt" or die "$!";
while (<FILE>) {
	my @mass=split;
	print "$mass[0]	$mass[1]	$mass[2]	$mass[3]	";
	for (my $i=4;$i<scalar(@mass);$i+=2) {my $ras=$mass[$i+1]-$mass[$i]; print "$ras	"}
	print "\n"
}
