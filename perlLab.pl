#!/usr/bin/perl

#use strict;

#use warnings;

my $TOTAL;

my @ARRAY;
#$MAX = 0;
my %SCORE;


while (<>) 
{
    next if $. == 1;
    chomp;
    @ARRAY = split(/,/, $_);
    #$score{@ARRAY[2]} = @ARRAY[3];
    #print $score{"H01"}."\n";
    foreach (@ARRAY) 
    {
        #if ($ARRAY[3] > $MAX[$ARRAY[2]]) 
        #{
           # $MAX[$ARRAY[2]] = $ARRAY[3];
        #}
        #else
        #print $ARRAY[3]."\n";
        #for $thing in $MAX
        
        #print $thing." ".$MAX[thing]."\n";
        
        
        #$students{@fields[0]} = @fields[1];
        
        if ($SCORE{@ARRAY[2]} > @ARRAY[3])
        {
            $SCORE{@ARRAY[2]} = @ARRAY[3];
        }
    }
    #print $MAX;
    for ($THING in $SCORE)
    {
        #print $THING." ".$SCORE{@ARRAY[2]}."\n";
        print $THING;
    }
}
#print "The Total is: ".$TOTAL."\n";
#print @ARRAY; 
#for (thing in MAX)
#{
#    print $thing, $MAX;
#}
