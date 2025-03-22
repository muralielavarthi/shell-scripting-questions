#!/bin/bash

$OUTPUT_FILE=$(touch output.txt)
$LOG_FILE=$(touch logfile.txt)

echo -n "enter valid directory path:"
read DIR
if [ -d $DIR ]
then
    LOG_FILES=$(find "$DIR" -type f -name "*.log")
    while read LINE
    do
        if [ -r $LINE ]
        then
            grep "error" $LINE &>$LOG_FILE
            if [ $? -eq 0 ]
            then
                echo $LINE >$OUTPUT_FILE
            fi
        else
            echo "No read permisson $LINE"
        fi  
    done <<< $LOG_FILES   # when you want pass file as input (<<<)
else
    echo "enter valid directory path"

fi

cat $OUTPUT_FILE
