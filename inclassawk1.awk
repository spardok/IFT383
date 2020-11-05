#use with pokemon
BEGIN {
    FS=","
    OFS="\t\t"
    OFMT="%.2f"
}
$3{
    #adds value of field 3
    HP_SUM[$2] += $3
    ATTACK_SUM[$2] += $4
    COUNT[$2]++
}
END {
    for (thing in HP_SUM {
        #if (thing ~ /.{7,}/) {
        #    SEP="\t"
        #} else {
        #    SEP="\t\t"
        #}
        #prints thing and prints avg
        print thing, (HP_SUM[thing]/COUNT[thing]), (ATTACK_SUM[thing]/COUNT[thing])
    }
    #print NR
}
