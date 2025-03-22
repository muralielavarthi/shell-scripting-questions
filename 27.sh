#!/bin/bash

echo "Enter lines of text (Ctrl+D to save and exit):"
FILE_NAME=output.txt

while read text
do
    echo $text >>$FILE_NAME
done

# "read line" means reading an entire line of input and storing it into the variable line.
# read command