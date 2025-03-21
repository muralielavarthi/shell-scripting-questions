#!/bin/bash
HOUR=$(date +"%H")

if [ $(($HOUR % 2)) -eq 0 ]
then
    echo "OK"
else
    echo "Not OK"
fi