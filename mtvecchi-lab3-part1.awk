BEGIN {
    FS=","
    OFS="\t"
    OFMT="%.2f"
    print "Name","Low","High","Average"
}
NR > 1 {
    #keeps track of score max
    if ($4 > MAX[$3]) {
        MAX[$3] = $4
    }
    #keeps track of score min
    if ($4 < MIN[$3]) {
        MIN[$3] = $4
    } else if (MIN[$3] == 0) {
        MIN[$3] = $4
    }
    #keeps track of score total and count total
    SCORE[$3] += $4
    COUNT[$3]++
}
END {
    #outputs to CLI
    for (thing in MAX) {
        print thing, MIN[thing],MAX[thing],(SCORE[thing]/COUNT[thing])
    }
}
