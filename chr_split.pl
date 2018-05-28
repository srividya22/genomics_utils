#!/usr/bin/env perl
##
## Script to split fasta file to individual chromosome files
## Usage : chr_split.pl <path to fasta_file>
## Author : Srividya Ramakrishnan
##

while (<>) {
  open $fh, '>>', $1 . ".fa"  if /\A>(.+?) /;
 
  print $fh $_ ;
}
