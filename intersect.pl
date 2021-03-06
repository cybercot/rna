#!/usr/bin/perl -w
use strict;

my @first=("k_promoters.txt","k_promoters+body.txt","k_promoters+body+3utr.txt","k_body.txt","k_body+3utr.txt","k_3utr.txt");
my @second=("k_nacl_promoters.txt","k_nacl_promoters+body.txt","k_nacl_promoters+body+3utr.txt","k_nacl_body.txt","k_nacl_body+3utr.txt","k_nacl_3utr.txt");
for (my $i=0; $i<scalar(@first); ++$i) {
	open FILE1,"<$first[$i]" or die "$!";
	my %hash;
	while (<FILE1>) {
		my @mass=split;
		$hash{$mass[11]}+=1
	}
	close FILE1;
	for (my $j=0; $j<scalar(@second); ++$j) {
		open FILE2, "<$second[$j]" or die "$!";
		open RESULTS, ">$first[$i]-$second[$j]" or die "$!";
		my $n=0;
		while (<FILE2>) {
			my @mass=split;
			if (exists $hash{$mass[11]}) {
				my $ras=$mass[7]-$mass[6];
				print RESULTS "$mass[4]	$mass[5]	$mass[6]	$mass[7]	$mass[8]	$mass[9]	$mass[10]	$ras	$mass[11]\n";
				++$n	
			}
		}
		print "$first[$i]	$second[$j]	$n\n";
		close FILE2;
		close RESULTS;
	}
}
