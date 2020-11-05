BEGIN {
    #2205 total
    ARSCOREANDREW[1]=0
    ARSCORECHELSEY[1]=0
    ARSCORESHANE[1]=0
    ARSCOREAVA[1]=0
    ARSCORESAM[1]=0
    FS=","
    print "Name","Percent","Letter"
}

#Keeps track of Andrew's total score
{
    if ($1 == "Andrew") {
        ARSCOREANDREW[0] = $1
        ARSCOREANDREW[1] += $4
    }
}

#Keeps track of Chelsey's total score
{
    if ($1 == "Chelsey") {
        ARSCORECHELSEY[1] += $4
    }
}

#Keeps track of Shane's total score
{
    if ($1 == "Shane") {
        ARSCORESHANE[1] += $4
    }
}

#Keeps track of Ava's total score
{
    if ($1 == "Ava") {
        ARSCOREAVA[1] += $4
    }
}

#Keeps track of Sam's total score
{
    if ($1 == "Sam") {
        ARSCORESAM[1] += $4
    }
}


#AR[0]=SCOREANDREW
#AR[1]=SCORECHELSEY
#AR[2]=SCORESHANE
#AR[3]=SCOREAVA
#AR[4]=SCORESAM

END {
    print ARSCOREANDREW[0],ARSCOREANDREW[1]
    print ARSCORECHELSEY[1]
    print ARSCORESHANE[1]
    print ARSCOREAVA[1]
    print ARSCORESAM[1]
}
