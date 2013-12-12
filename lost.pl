#!/usr/bin/perl -w
use strict;

my $pos=0;
my $neg=0;
my $not=0;
open RESULTS1,">positive.txt" or die "$!";
open RESULTS2,">negative.txt" or die "$!";
open RESULTS3,">not.txt" or die "$!";
while (<>) {
	my @mass=split;
	if ($mass[6] eq 'yes') {
		my $ras=$mass[3]-$mass[2];
		if ($ras>0) {$pos+=1; print RESULTS1 "$mass[0]	$mass[1]	$mass[2]	$mass[3]	$mass[4]	$mass[5]	$mass[6]\n"}
		else {$neg+=1; print RESULTS2 "$mass[0]  $mass[1]        $mass[2]        $mass[3]        $mass[4]        $mass[5]	$mass[6]\n"}
	} else {
		$not+=1;
		print RESULTS3 "$mass[0]  $mass[1]        $mass[2]        $mass[3]        $mass[4]        $mass[5]	$mass[6]\n"
	}
}

print "$pos	$neg	$not\n";
