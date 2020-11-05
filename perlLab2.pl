#!/usr/bin/perl
use warnings;
@lines = <>;
my %students; #you need to use a hashmap for perl
#$students{@fields[2]} = 0;

#for ($i =1; $i; $i < scalar @lines; $i++) use this instead of foreach
foreach $line (@lines)
{
    #next if $line == 1;
    #$students{"Chelsey"} = 100;
    #print $students{"Chelsey"}."\n";
    chomp($line); #gets rid of newline
    @fields = split(/,/, $line);
    #print $fields[0];
    #foreach $field (@fields)
    #$students{@fields[2]} = @fields[3];
    
    #print $students{"H01"}."\n";
    if ($score{@fields[2]} < @fields[3])
    {
        $score{@fields[2]} = @fields[3];
    }
    
    #{
    #    print $field."/n";
    #}
}
print $students{"H02"};
#print $FIELDS[2]." ".$score{@FIELDS[2]}."\n";
#print $field
