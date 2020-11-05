#use with pokemon
BEGIN {
    FS=","
    OFS="\t\t"
    OFMT="%.2f"
}
$3 {
    #adds value of field 3
    #MIN[]
    #MAX[]
    
    if ($3 > MAX[$2]) {
        MAX[$2] = $3
    }
    if ($3 < MIN[$2]) {
        MIN[$2] = $3
    } else if (MIN[$2] == 0) {
        MIN[$2] = $3
    }
}
END {
    for (thing in MAX) {
        #if (thing ~ /.{7,}/) {
        #    SEP="\t"
        #} else {
        #    SEP="\t\t"
        #}
        #prints thing and prints avg
        print thing,MAX[thing]
    }
    #print NR
}
