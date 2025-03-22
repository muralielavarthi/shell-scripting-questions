#!/bin/bash

echo "Enter lines of text (Ctrl+D to save and exit):"
FILE_NAME=output.txt

while read line
do
    echo $line >>$FILE_NAME
done

# "read line" means reading an entire line of input and storing it into the variable line.
# line is variable and read is command