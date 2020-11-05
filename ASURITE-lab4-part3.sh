#!/bin/bash
read -p "Please enter the filename and filetype you wish to run against Lab4 Part2 with (Example: data.csv)":" " FILENAME
cat ./$FILENAME | ./ASURITE-lab4-part2.pl | head -1
cat ./$FILENAME | ./ASURITE-lab4-part2.pl | tail -n+2 | sort -k1
