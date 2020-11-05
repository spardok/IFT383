#!/usr/bin/perl

#use warnings;

#PRINTS HEADER
print "Name"."\t"."Percent"."\t"."Letter"."\n";

#DEFINES
@lines = <>;
my %score;

#READS IN FILE
foreach $line (@lines)
{
    #CHOMPS NEW LINE AND SPLITS ARRAY
    chomp($line);
    @ARRAY = split(/,/, $line);

    #GIVES THE SCORE TOTAL
    $score{$ARRAY[0]} += $ARRAY[3];
    #print $score{"Sam"}; TO SHOW THE TOTAL SCORE    
        
}
        #Andrew GRADE
        $AndrewScore = ("%.2f",(($score{"Andrew"}/2205)*100));
        if ($AndrewScore >= 90) 
        {
            $LETTERGRAD = "A";
        }
        if (($AndrewScore >= 80) && ($AndrewScore < 90)) 
        {
            $LETTERGRAD = "B";
        }
        if (($AndrewScore >= 70) && ($AndrewScore < 80)) 
        {
            $LETTERGRAD = "C";
        }
        if (($AndrewScore >= 60) && ($AndrewScore < 70)) 
        {
            $LETTERGRAD = "D";
        }
        if ($AndrewScore < 60) 
        {
            $LETTERGRAD = "F";
        }
    
        #Andrew print
        print "Andrew"."\t";
        printf("%.2f",$AndrewScore);
        print "\t".$LETTERGRAD."\n";
 
 
        #Chelsey GRADE
        $ChelseyScore = ("%.2f",(($score{"Chelsey"}/2205)*100));
        if ($ChelseyScore >= 90) 
        {
            $LETTERGRADE = "A";
        }
        if (($ChelseyScore >= 80) && ($ChelseyScore < 90)) 
        {
            $LETTERGRADE = "B";
        }
        if (($ChelseyScore >= 70) && ($ChelseyScore < 80)) 
        {
            $LETTERGRADE = "C";
        }
        if (($ChelseyScore >= 60) && ($ChelseyScore < 70)) 
        {
            $LETTERGRADE = "D";
        }
        if ($ChelseyScore < 60) 
        {
            $LETTERGRADE = "F";
        }
    
        #CHELSEY print
        print "Chelsey"."\t";
        printf("%.2f",$ChelseyScore);
        print "\t".$LETTERGRADE."\n";
        
        
        #Shane GRADE
        $ShaneScore = ("%.2f",(($score{"Shane"}/2205)*100));
        if ($ShaneScore >= 90) 
        {
            $LETTERGRADE = "A";
        }
        if (($ShaneScore >= 80) && ($ShaneScore < 90)) 
        {
            $LETTERGRADE = "B";
        }
        if (($ShaneScore >= 70) && ($ShaneScore < 80)) 
        {
            $LETTERGRADE = "C";
        }
        if (($ShaneScore >= 60) && ($ShaneScore < 70)) 
        {
            $LETTERGRADE = "D";
        }
        if ($ShaneScore < 60) 
        {
            $LETTERGRADE = "F";
        }
    
        #Shane print
        print "Shane"."\t";
        printf("%.2f",$ShaneScore);
        print "\t".$LETTERGRADE."\n";
        
        
        #Ava GRADE
        $AvaScore = ("%.2f",(($score{"Ava"}/2205)*100));
        if ($AvaScore >= 90) 
        {
            $LETTERGRADE = "A";
        }
        if (($AvaScore >= 80) && ($AvaScore < 90)) 
        {
            $LETTERGRADE = "B";
        }
        if (($AvaScore >= 70) && ($AvaScore < 80)) 
        {
            $LETTERGRADE = "C";
        }
        if (($AvaScore >= 60) && ($AvaScore < 70)) 
        {
            $LETTERGRADE = "D";
        }
        if ($AvaScore < 60) 
        {
            $LETTERGRADE = "F";
        }
    
        #Ava print
        print "Ava"."\t";
        printf("%.2f",$AvaScore);
        print "\t".$LETTERGRADE."\n";
        
        
        #Sam GRADE
        $SamScore = ("%.2f",(($score{"Sam"}/2205)*100));
        if ($SamScore >= 90) 
        {
            $LETTERGRADE = "A";
        }
        if (($SamScore >= 80) && ($SamScore < 90)) 
        {
            $LETTERGRADE = "B";
        }
        if (($SamScore >= 70) && ($SamScore < 80)) 
        {
            $LETTERGRADE = "C";
        }
        if (($SamScore >= 60) && ($SamScore < 70)) 
        {
            $LETTERGRADE = "D";
        }
        if ($SamScore < 60) 
        {
            $LETTERGRADE = "F";
        }
    
        #Sam print
        print "Sam"."\t";
        printf("%.2f",$SamScore);
        print "\t".$LETTERGRADE."\n";
