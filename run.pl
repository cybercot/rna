#!/usr/bin/perl -w
use strict;

open FILE,"<new_ref.txt" or die "$!";
while (<FILE>) {
	my @mass=split;
	my $first=0;
	my $second=0;
	if ($mass[3] eq '-') {$first=$mass[1]-1000; $second=$mass[1]}
	else {$first=$mass[2]; $second=$mass[2]+1000}
	print "$mass[0]	$first	$second	";
	for (my $i=3; $i<scalar(@mass); ++$i) {print "$mass[$i]	"}
	print "\n"
}
