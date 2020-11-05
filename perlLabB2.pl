#!/usr/bin/perl

#use strict;

use warnings;

#my $TOTAL;

@lines = <>;
my %score;
#my $GRADEMATH;
#my @ARRAY;
#$MAX = 0;

foreach $line (@lines)
{
    chomp($line);
    @ARRAY = split(/,/, $line);
    #$students{@fields[2]} += @fields[3];
    
    #GIVES THE SCORE TOTAL
    $score{$ARRAY[0]} += $ARRAY[3];
    #print $score{"Sam"}; TO SHOW THE TOTAL SCORE    
        
        
    #if ($ARRAY[0] eq "Chelsey")
    #{
    #    $SCORETOTAL += $ARRAY[3];
    #    #print $CHELSCR;
    #    #$count++;
    #}
    #if ($ARRAY[0] eq "Sam")
    #{
    #    $SCORETOTAL += $ARRAY[3];
        #print $CHELSCR;
        #$count++;
    #}
    #}
    #print $ARRAY[0].$CHELSCR."\n"
}

        #create GRADEMATH so I don't need to do the math in every if statement
        #$GRADEMATH = (($SCORETOTAL/2205)*100); JUST CALL THIS IN PRINT FUNCTION
        #calculations for grade letter
#for ($CALCULATION)
#{
        #$GRADEMATH = $score{"Chelsey"};
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

        #CHELSEY
        print "Chelsey"."  ";
        printf("%.2f",(($score{"Chelsey"}/2205)*100));
        
        print "  ".$LETTERGRADE."\n";
 
#print $CHELSCR."\n";
#print $count;
