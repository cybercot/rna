#!/usr/bin/perl -w
use strict;

while (<>) {
	my @mass=split;
	if ($mass[3] eq '+') {
		print "$mass[0]	$mass[1]	$mass[14]\n"
	} else {print "$mass[0]	$mass[14]	$mass[1]\n"}
}
