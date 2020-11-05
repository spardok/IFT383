#!/usr/bin/perl

#use strict;

use warnings;

#my $TOTAL;
my %score;
my @ARRAY;
#$MAX = 0;
#my %score;


while (<>) 
{
    next if $. == 1;
    chomp;
    @ARRAY = split(/,/, $_);
    $score{$ARRAY[0]} += $ARRAY[3];
    #foreach (@ARRAY)
    #{
        if ($ARRAY[0] eq "Chelsey")
        {
            $SCORETOTAL += $ARRAY[3];
            #print $CHELSCR;
            #$count++;
        }
        if ($ARRAY[0] eq "Sam")
        {
            $SCORETOTAL += $ARRAY[3];
            #print $CHELSCR;
            #$count++;
        }
    #}
    #print $ARRAY[0].$CHELSCR."\n"
}

        #create GRADEMATH so I don't need to do the math in every if statement
        $GRADEMATH = (($SCORETOTAL/2205)*100);
        #calculations for grade letter
        if ($GRADEMATH >= 90) 
        {
            $LETTERGRADE = "A";
        }
        if (($GRADEMATH >= 80) && ($GRADEMATH < 90)) 
        {
            $LETTERGRADE = "B";
        }
        if (($GRADEMATH >= 70) && ($GRADEMATH < 80)) 
        {
            $LETTERGRADE = "C";
        }
        if (($GRADEMATH >= 60) && ($GRADEMATH < 70)) 
        {
            $LETTERGRADE = "D";
        }
        if ($GRADEMATH < 60) 
        {
            $LETTERGRADE = "F";
        }
        #prints to CLI
        #print $SCORETOTAL." ".$LETTERGRADE;
        print $score{$ARRAY["Sam"]};
#print $CHELSCR."\n";
#print $count;
