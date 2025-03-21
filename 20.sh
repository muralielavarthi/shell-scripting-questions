#!/bin/bash

NUMBER=1
while [ $NUMBER -le 5 ]
do
    if [ $NUMBER -eq 3 ]
    then
        continue
    fi
    echo $NUMBER
    NUMBER=$(($NUMBER+1))
done