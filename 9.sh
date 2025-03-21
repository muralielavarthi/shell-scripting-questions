#!/bin/bash
echo "enter the number"
read NUMBER

if [ $(($NUMBER%10)) -eq 0 ]
then
    echo "divisible by 10"
else
    echo "not divisible by 10"
fi