#!/bin/bash

echo "enter valid directory"
read DIR
if [ -d $DIR ]
then
    du -a $DIR | sort -n -r | head -n 10
else
    echo "$DIR is invalid"
fi


# lists the disk usage of all files and directories under the /var/log directory, including subdirectories.
# -a: all including files and directories
# -n: It tells sort to treat the input as numbers
# -r: Sort in reverse order, so the largest files or directories appear first.