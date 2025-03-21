#!/bin/bash

echo "enter number 1"
read NUMBER_1

echo "enter number 2"
read NUMBER_2


#In the context of input validation, we use let to check if the input can be 
#successfully used in an arithmetic operation:
let $(($NUMBER_1 + 0))
EXIT_STATUS1=$(echo $?)

let $(($NUMBER_2 + 0))
EXIT_STATUS2=$(echo $?)

if [ $EXIT_STATUS1 -eq 0 ] && [ $EXIT_STATUS2 -eq 0 ]
then
     SUM=$(($NUMBER_1 + $NUMBER_2))
        echo "SUM is : $SUM"
else
    echo "enter valid integer numbers"
fi