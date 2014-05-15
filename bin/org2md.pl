#!/usr/bin/perl
#
# org2md.pl
#
# simple conversion of .org lists to markdown


my $l;
while($l = <STDIN>){
    if ($l =~ /(\*\**)(.*)/){
	$l = ("\t" x length($1))."* $2\n";
    }
    print $l;
}
