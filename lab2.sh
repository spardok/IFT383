#!/bin/bash

#declare variables
declare INPUT

#tells user what to do
echo 'You may enter a name, a number, or both to search the database'
echo 'The number MUST ALWAYS be in the form nnn-nnn-nnnn'
echo 'If you include name AND number, it must be in the form of: name number'
echo -e 'If you wish to add an entry, it must be in the form of: name number\n'

#reads in a phone number and stores it in $INPUT
read -p "What do you wish to search for?: " INPUT 

#stores $INPUT as an array $ARRINPUT to be used instead (easier to use)
read -a ARRINPUT <<< "$INPUT"

#screams at you if you have more than one argument
if [[ "${#ARRINPUT[*]}" > 2 ]]; then
    echo '--------------------------'
    echo 'You did not follow proper format, please re-run and try again'
    echo '--------------------------'
fi

#checks if there is only one argument
if [[ "${#ARRINPUT[*]}" == 1 ]]; then
    #screams at you if you do not use nnn-nnn-nnnn format
    if [[ "${ARRINPUT[0]}" =~ [0-9] && "${#ARRINPUT[0]}" != 12 ]] || [[ ! "${ARRINPUT[0]}" =~ [-]{2} && "${#ARRINPUT[0]}" == 12 ]]; then
        echo '--------------------------'
        echo 'Please use the proper phone number formatting: nnn-nnn-nnnn'
        echo '--------------------------'
    fi
        
    #checks if the entered number is a phone number
    if [[ "${ARRINPUT[0]}" =~ [0-9] ]] && [[ "${#ARRINPUT[0]}" == 12 ]] && [[ "${ARRINPUT[0]}" =~ [-]{2} ]]; then
        if ((`grep -Ec ${ARRINPUT[0]} teledir.txt` > 0)); then
            echo '--------------------------'
            echo -e "Found search results matching $INPUT\n"
            grep -E $INPUT teledir.txt
            echo '--------------------------'
        else
            echo '--------------------------'
            echo 'Number does not exist'
            echo '--------------------------'
        fi
    fi
    #checks if a name was entered
    if [[ "${ARRINPUT[0]}" =~ [a-zA-Z] && ! "${ARRINPUT[0]}" =~ [0-9] ]]; then
        if ((`grep -Fci ${ARRINPUT[0]}: teledir.txt` > 0)); then
            echo '--------------------------'
            echo -e "Found Search results matching $INPUT\n"
            grep -Ei $INPUT teledir.txt
            echo '--------------------------'
        else
            echo '--------------------------'
            echo 'Name does not exist'
            echo '--------------------------'
        fi
    fi
fi

#checks if there are two arguments
if [[ "${#ARRINPUT[*]}" == 2 ]]; then
    #will either find what was searched or add it to teledir.txt
    if [[ "${ARRINPUT[1]}" =~ [0-9] ]] && [[ "${#ARRINPUT[1]}" == 12 ]] && [[ "${ARRINPUT[0]}" =~ [a-zA-Z] ]]; then
        if ((`grep -Fci "${ARRINPUT[0]}: ${ARRINPUT[1]}" teledir.txt` > 0)); then
            echo '--------------------------'
            echo -e "Found search results matching ${ARRINPUT[@]}\n"
            grep -E "${ARRINPUT[0]}: ${ARRINPUT[1]}" teledir.txt
            echo '--------------------------'
        else
            echo '--------------------------'
            echo Could not find, Adding Entry to teledir.txt
            echo '--------------------------'
            echo "${ARRINPUT[0]}: ${ARRINPUT[1]}" >> teledir.txt
        fi
    else
        echo '--------------------------'
        echo "You did not use the format: Name number"
        echo '--------------------------'
    fi
fi

#echo 1st: ${ARRINPUT[0]} 2nd: ${ARRINPUT[1]} AND WHOLE: ${ARRINPUT[@]}
#echo Length: ${#ARRINPUT[*]}

#echo ${INPUT[0]} ${INPUT[1]} Length: "${#INPUT[*]}"

#while [ ${ARRINPUT[0]}" =~ [0-9] ]] && [[ "${#ARRINPUT[0]}" = 12 ]; do
#echo -e '\nYour number was incorrect, please use the proper format'
#    read -p "Enter a phone # (format must be nnn-nnn-nnnn): " NUMBER
#done
