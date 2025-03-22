#!/bin/bash

CURRENT_DATE=$(date +"%d")

if [ $CURRENT_DATE -lt 10 ]
then
    echo "Current date Less than 10"
elif [ $CURRENT_DATE -eq 10 ]
then
    echo "Current date Equals to 10"
else
    echo "current date Greater than 10"
fi