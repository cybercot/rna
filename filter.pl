#!/usr/bin/perl -w
use strict;

my %hash;
my $n=0;
while (<>) {
	++$n;
	my @mass=split;
	$hash{$mass[5]}+=1
}
print "$n\n";
my $i=0;
for my $key (sort keys %hash) {
	++$i;
}
print "$i\n";


