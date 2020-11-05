BEGIN {
    FS=","
    OFS="\t"
    OFMT="%.2f"
    print "Name","Percent","Letter"
}
NR > 1 {
    #adds up everyone's scores and adds up total possible
    SCORETOTAL[$1] += $4
    TTOTAL[$1] += $5
}
END {
    #for loop to get proper output
    for (thing in SCORETOTAL) {
        #create GRADEMATH so I don't need to do the math in every if statement
        GRADEMATH = ((SCORETOTAL[thing]/TTOTAL[thing])*100)
        #calculations for grade letter
        if (GRADEMATH >= 90) {
        SCORE[thing] = "A"
        }
        if ((GRADEMATH >= 80) && (GRADEMATH < 90)) {
        SCORE[thing] = "B"
        }
        if ((GRADEMATH >= 70) && (GRADEMATH < 80)) {
        SCORE[thing] = "C"
        }
        if ((GRADEMATH >= 60) && (GRADEMATH < 70)) {
        SCORE[thing] = "D"
        }
        if (GRADEMATH < 60) {
        SCORE[thing] = "F"
        }
        #prints to CLI
        print thing,GRADEMATH,SCORE[thing]
    }
    
}
