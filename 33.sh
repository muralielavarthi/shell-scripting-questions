#!/bin/bash

$LOG_FILE=logfile.txt
echo -n "enter valid directory path:"
read DIR
if [ -d $DIR ]
then
    LOG_FILES=$(find "$DIR" -type f -name "*.log")
    while read LINE
    do
        grep "error" $LINE &>>$LOG_FILE
        if [ $? -eq 0 ]
        then
            echo $LINE >> output.txt
        fi
    done <<< $LOG_FILES   # when you want pass file as input
else
    echo "enter valid directory path"

fi

cat ouput.txt
