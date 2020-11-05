#!/bin/bash
declare -i NUMBER
read -p "Enter a number between 0 and 9: " NUMBER
if [ $NUMBER -gt '9' ]; then
    echo "invalid entry"
elif [ $NUMBER -gt '5' ]; then
    echo "Your number is greater than 5"
elif [ $NUMBER -lt '5' ]; then
    echo "Your number is less than 5"
elif [ $NUMBER -eq '5' ]; then
    echo "Your number is 5"
fi
