#!/usr/bin/perl

my $l;
while($l = <STDIN>){
    if ($l =~ /(\*\**)(.*)/){
	$l = ("\t" x length($1))."* $2\n";
    }
    print $l;
}
