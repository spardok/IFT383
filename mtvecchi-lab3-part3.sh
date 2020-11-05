#!/bin/bash
read -p "Please enter the Lab3 Task2 filename with .filetype you wish to run the awk script against (Example: L3T2.csv) ": FILENAME
cat ./$FILENAME | awk -f ./L3TASK2.awk | head -1
cat ./$FILENAME | awk -f ./L3TASK2.awk | tail -n+2 | sort -k1

