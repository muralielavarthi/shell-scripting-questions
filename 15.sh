#!/bin/bash

mkdir dummy; cd dummy

for i in {1..10}
do
    FILENAME=$i
    touch $FILENAME
done