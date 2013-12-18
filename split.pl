#!/usr/bin/perl -w
use strict;

open FILE,"<pca.txt" or die "$!";
open RESULTS1, ">up.txt" or die "$!";
open RESULTS2,">down.txt" or die "$!";
open RESULTS3,">not_change.txt" or die "$!";
while (<FILE>) {
	my @mass=split;
	if ($mass[3]<0) {print RESULTS2 "$mass[0] $mass[1]        $mass[2]        ";for (my $i=4; $i<scalar(@mass);++$i) {print RESULTS2 "$mass[$i]	"}print RESULTS2 "\n"}
	elsif ($mass[3]>0) {print RESULTS1 "$mass[0] $mass[1]        $mass[2]        ";for (my $i=4; $i<scalar(@mass);++$i) {print RESULTS1 "$mass[$i]        "}print RESULTS1 "\n"}
	else {print RESULTS3 "$mass[0] $mass[1]        $mass[2]        ";for (my $i=4; $i<scalar(@mass);++$i) {print RESULTS3 "$mass[$i]        "}print RESULTS3 "\n"}
}
