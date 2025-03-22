#!/bin/bash

echo -n "enter valid directory path:"
read DIR
if [ -d $DIR ]
then
    LOG_FILES=$(find "$DIR" -type f -name "*.log")
    while read LINE # read line by line from file
    do
        if [ -r $LINE ] # to check whether log file has read permissions
        then
            grep -i "error" $LINE &>>log-file.txt
            if [ $? -eq 0 ]
            then
                echo $LINE >>output.txt
            fi
        else
            echo "No read permisson $LINE"
        fi  
    done <<< $LOG_FILES   # when you want pass file as input (<<<)
else
    echo "enter valid directory path"

fi

cat output.txt | sort | uniq 

# This would sort the lines and then remove any duplicate lines from the entire file.
# This sorts the output of cat output.txt in ascending order (by default).
# The sort command is used to arrange the lines of text in a specified order
# sort filename.txt will sort the contents of filename.txt in alphabetical order.

