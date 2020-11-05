#!/bin/bash
declare -i SUM=0
declare -i INPUT=0
until (($SUM > 10)); do
read -p "You have ${SUM} apples, how many apples to add? " INPUT
SUM=$(($SUM + $INPUT))
done
echo -e "WOW! ${SUM} apples! that is too many apples!!"
