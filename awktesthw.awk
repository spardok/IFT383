BEGIN {
    RSUM=0
    FS=","

}
{
    for (i=1; i <= NF; i++) {
    RSUM += $i
    }
}
END {
print "The Sum Is: " RSUM
}


#cat ./hi.csv | awk -f ./awktesthw.awk
