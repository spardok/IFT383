my $string;
my @myArray;
my @myArraySplit;
my $TOTAL;

while (<>) {
    chomp; 
    push @myArray, $_;
}

$string = join( ",", @myArray);

@myArraySplit = split(/,/, $string);

foreach (@myArraySplit) {
    $TOTAL += $_
}
print "The Total is: ".$TOTAL."\n";
