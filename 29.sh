#!/bin/bash

echo "Enter num 1"
read NUM1
echo "Enter num 2"
read NUM2

function SUM(){
   return $(($NUM1 + $NUM2))
}

RESULT= SUM $NUM1 $NUM2
echo "SUM is: $RESULT"