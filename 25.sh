#!/bin/bash

echo "enter directory path"
read DIR_PATH

if [ -d $DIR_PATH ]
then
    Count=$(ls $DIR_PATH | wc -l)
    echo "No of files in given directory is: $Count"
else
    echo "enter valid directory"
fi