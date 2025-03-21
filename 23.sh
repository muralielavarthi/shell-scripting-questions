#!/bin/bash

echo "enter number 1"
read NUMBER_1

echo "enter number 2"
read NUMBER_2


function VALIDATE()
{
    if [ $NUMBER_1 -eq $NUMBER_1] && [ $NUMBER_2 -eq $NUMBER_2]
    then
        SUM=$(($NUMBER_1 + $NUMBER_2))
        echo "SUM is : $SUM"
    else
        echo "enter validate numbers"
    fi
}
VALIDATE $NUMBER_1 $NUMBER_2
