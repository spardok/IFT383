BEGIN {
    #test
    FS=","
    print "Name","Low","High","Average"
    #H01LOW=100
    #H01HIGH=0
    #H01AVG=0
    #H01COUNT=0
    split("100,0,0,0",VRH01,",")
}

{
    if ($3 == "H01") {
        if ($4 < VRH01[0]) {
            VRH01[0] = $4
        }
        if ($4 > VRH01[1]) {
            VRH01[1] = $4
        }
        VRH01[2] += $4
        VRH01[$4]++
    }
}
END {
    print "H01",VRH01[0],VRH01[1],(VRH01[$3]/VRH01[$4])
}
