#!/bin/bash

NUMBER=1
while [ $NUMBER -le 5 ]
do
    if [ $NUMBER -eq 3 ]
    then
        continue
    else
        echo $NUMBER
    fi
NUMBER=$(($NUMBER+1))
done