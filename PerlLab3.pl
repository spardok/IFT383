#!/usr/bin/perl
#use warnings;

#HOLDS VARIABLES
my %high; 
my %low;
my %sum;
my %count;

#TAKES IN ALL THE LINES OF THE FILE
@lines = <>;
foreach $line (@lines) 
{
    chomp($line);
    @fields = split(/,/, $line); 
    
    #HANDLES MAX
    if ($high{@fields[2]} < @fields[3])
    {
        $high{@fields[2]} = @fields[3];
    }
    
    #HANDLES MIN
    if ($low{@fields[2]} > @fields[3])
    {
        $low{@fields[2]} = @fields[3];
    }   
    elsif ($low{@fields[2]} == 0) 
    {
        $low{@fields[2]} = @fields[3];
    }
    
    #HANDLES AVG
    $sum{@fields[2]} += @fields[3];
    $count{@fields[2]}++;
}
#PRINTS OUT THE INFO
foreach $key (keys %high)
{
    $avg = $sum{$key} / $count{$key};
    printf("%s\t%s\t%s\t%.2f\n", $key, $high{$key}, $low{$key}, $avg);
    
}
