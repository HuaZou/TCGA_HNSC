#!/usr/bin/perl

use warnings;
use strict;
use Getopt::Long;


my($infile1, $infile2, $infile3, $out);
GetOptions(
    "f1|file:s" =>  \$infile1,
    "f2|file:s" =>  \$infile2,
    "f3|file:s" =>  \$infile3,    
    "o|out:s"   =>  \$out
);

my %gene_name;
open(IN1, "$infile1") or die "can't open $infile1";
<IN1>;
while(<IN1>){
    chomp;
    my @tmp = split("\t", $_);
    $gene_name{$tmp[0]} = $tmp[1];
}
close(IN1);

open(IN2, "$infile2") or die "can't open $infile2";
<IN2>;
while(<IN2>){
    chomp;
    my @tmp = split("\t", $_);
    if(exists($gene_name{$tmp[1]})){
    }else{
        $gene_name{$tmp[1]} = $tmp[0];
    }
}
close(IN2);


my (%upper, %lower);
open(IN3, "$infile3") or die "can't open $infile3";
<IN3>;
while(<IN3>){
    chomp;
    my @tmp = split("\t", $_);
    $upper{$tmp[2]} = $tmp[1];
    $lower{$tmp[1]} = $tmp[2];
}
close(IN3);

open(OT, "> $out") or die "can't open $out";
print OT "GeneID\tGene_Name\n";
foreach my $key (keys %gene_name){
    if(exists($upper{$key})){
        print OT "$key\t$gene_name{$key}\n";
    }elsif(exists($lower{$key})){
        print "$lower{$key}\t$gene_name{$key}\n";
        print OT "$lower{$key}\t$gene_name{$key}\n";
    }else{
        print OT "$key\t$gene_name{$key}\n";        
    }   
}
close(OT);
