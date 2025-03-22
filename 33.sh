#!/bin/bash

echo -n "enter valid directory path:"
read DIR

function ERROR_CHECK(){

    LOG_FILES= $(find $DIR -type f -name "*.log")

    while read LINE
    do
        grep "error" $LINE
        if [ $? -eq 0 ]
        then
            $LINE >>output.txt
        fi
    done << $LOG_FILES
}

if [ -d $DIR ]
then
    ERROR_CHECK
else
    echo "enter valid directory path"

fi