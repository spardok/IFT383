#!/usr/bin/perl
@lines = <>;
my %students #you need to use a hashmap for perl

foreach $line (@lines)
{
    $students{"Chelsey"} = 100;
    print $students{"Chelsey"};
    chomp($line); #gets rid of newline
    @fields = split(/,/, $line);
    print @fields[0];
    foreach $field (@fields)
    $students{@fields[0]} = @fields[1];
    {
        print $field."/n";
    }
}
