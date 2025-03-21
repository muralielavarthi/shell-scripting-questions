#!/bin/bash

set -x

NUMBER=1
while [ $NUMBER -le 5 ]
do
    if [ $NUMBER -eq 3 ]
    then
        NUMBER=$(($NUMBER+1))
        continue
    else
        echo $NUMBER
    fi
    
    NUMBER=$(($NUMBER+1))
done