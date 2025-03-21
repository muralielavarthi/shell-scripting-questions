#!/bin/bash

echo "enter number"
read NUMBER

if [ $(($NUMBER % 3)) -eq 0 ] || [ $(($NUMBER % 5)) -eq 0  ] || [ $(($NUMBER % 7)) -eq 0  ]
then
    echo "$NUMBER Divisible"
else
    echo "$NUMBER Not Divisible"
fi