#!/bin/bash

NUMBER=1
while [ $NUMBER -le 5 ]
do
    if [ $i -eq 3 ]
    then
        continue
    else
        echo $i
    fi
NUMBER=$(($NUMBER+1))
done