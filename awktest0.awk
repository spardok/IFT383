BEGIN {
    #test
    FS=","
    print "Name","Low","High","Average"
    H01LOW=100
    H01HIGH=0
    H01AVG=0
    H01COUNT=0
}

{
    if ($3 == "H01") {
        if ($4 < H01LOW) {
            H01LOW = $4
        }
        if ($4 > H01HIGH) {
            H01HIGH = $4
        }
        H01AVG += $4
        H01COUNT++
    }
}
END {
    print "H01",H01LOW,H01HIGH,(H01AVG/H01COUNT)
}
