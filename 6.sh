#!/bin/bash
DATE=$(date +"%d")

if [ $(($DATE % 2)) -eq 0 ]
then
    echo "Even Day"
else
    echo "Not Even Day"
fi

#$((...)) syntax to evaluate and return the result. Without $((...)), 
#Bash would treat the expression as a string and not perform arithmetic correctly.