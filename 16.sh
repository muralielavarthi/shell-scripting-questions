#!/bin/bash

for i in {1..100}
do
    if [ $(($i % 5)) -eq 0 ]
    then
        echo $i
    fi
done