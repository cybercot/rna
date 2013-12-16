#!/usr/bin/perl -w
use strict;

open FILE,"<promoters.txt" or die "$!";
my %hash;

while (<>) {
        my @mass=split;
        $hash{$mass[11]}=$_;
}

while (<FILE>) {
	my @mass=split;
        if (exists $hash{$mass[11]}) {print "1\n"}
        else {print "0\n"}
}

