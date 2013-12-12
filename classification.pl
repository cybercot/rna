#!/usr/bin/perl -w
use strict;


open FILE1,"<Kaiso_NaCl_promoters.txt" or die "$!";
open FILE2,"<Kaiso_NaCl_body.txt" or die "$!";
open FILE3,"<Kaiso_NaCl_3utr.txt" or die "$!";

my %hash1;
my %hash2;
my %hash3;
while (<FILE1>) {
	my @mass=split;
	$hash1{$mass[11]}=$_
}

while (<FILE2>) { 
        my @mass=split;
        $hash2{$mass[11]}=$_
}

while (<FILE3>) { 
        my @mass=split;
        $hash3{$mass[11]}=$_
}
open RESULTS1,">k_nacl_promoters.txt" or die "$!";
open RESULTS2,">k_nacl_promoters+body.txt" or die "$!";
open RESULTS3,">k_nacl_promoters+body+3utr.txt" or die "$!";
open RESULTS4,">k_nacl_body.txt" or die "$!";
open RESULTS5,">k_nacl_body+3utr.txt" or die "$!";
open RESULTS6,">k_nacl_3utr.txt" or die "$!";
for my $key (sort keys %hash1) {
	my @mass=split(' ',$hash1{$key});
	if (not exists $hash2{$key} and not exists $hash3{$key}) {for (my $i=0; $i<scalar(@mass); ++$i) {print RESULTS1 "$mass[$i]	"}print RESULTS1 "\n"}
	elsif (exists $hash2{$key} and not exists $hash3{$key}) {for (my $i=0; $i<scalar(@mass); ++$i) {print RESULTS2 "$mass[$i]	"}print RESULTS2 "\n"}
	elsif (exists $hash2{$key} and exists $hash3{$key}) {for (my $i=0; $i<scalar(@mass); ++$i) {print RESULTS3 "$mass[$i]	"}print RESULTS3 "\n"}
}
for my $key (sort keys %hash2) {
	my @mass=split(' ',$hash2{$key});
	if (not exists $hash1{$key} and not exists $hash3{$key}) {for (my $i=0; $i<scalar(@mass); ++$i) {print RESULTS4 "$mass[$i]	"}print RESULTS4 "\n"}
	elsif (not exists $hash1{$key} and exists $hash3{$key}) {for (my $i=0; $i<scalar(@mass); ++$i) {print RESULTS5 "$mass[$i]	"}print RESULTS5 "\n"}
}

for my $key (sort keys %hash3) {
	my @mass=split(' ',$hash3{$key});
	if (not exists $hash1{$key} and not exists $hash2{$key}) {for (my $i=0; $i<scalar(@mass); ++$i) {print RESULTS6 "$mass[$i]	"}print RESULTS6 "\n"}
}
