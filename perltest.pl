#!/usr/bin/perl
#use strict;
#use warnings;
#$INPUT = <STDIN>;
#print @INPUT
#chomp($INPUT);
#@things = split(/,\n/, <>);
#chomp "@things";
#
#foreach $thing (@things) {
#    #$TOTAL = $TOTAL + $thing
#    print "$thing "
#}
#print "$TOTAL";

#my @array = <> ;
#chomp @array;
#print "@array[2]";

#foreach $thing (@things) {
#print "$thing "
#}
#print "@things "
#chomp(@a = <>); 
#join(",", @a);
#print "@a[1]"
#print @things
#my @array
#my $TOTAL;
#my @ARRAY;
#while (<>) 
#{
#    chomp;
#    push @ARRAY, $_;
#}
#foreach my $i (@ARRAY)
#{
#  print substr($i,index($i,"=",0)+1,index($i,",",0)-3)."\n";
#}
#print substr($ARRAY[0],index($ARRAY[0],"=",0)+1,index($ARRAY[0],",",0)-3)."\n";
#print substr($ARRAY[1],index($ARRAY[1],"=",0)+1,index($ARRAY[1],",",0)-3)."\n";
#print substr($ARRAY[2],index($ARRAY[2],"=",0)+1,index($ARRAY[2],",",0)-3)."\n";
#print substr($ARRAY[3],index($ARRAY[3],"=",0)+1,index($ARRAY[3],",",0)-3)."\n";
##!/usr/bin/perl
#use warnings;
##!/usr/bin/perl
sub addAll 
{
    my $TOTAL=0;
    
    my @ARRAY = @_;
    foreach my $i (@ARRAY)
    {
        $TOTAL += $i;
    }
    
    return $TOTAL;
}

print addAll(1, 2, 3, 4, 5) . "\n";
print addAll(5, 10, 0, 1) . "\n";
print addAll(1,1) . "\n";
