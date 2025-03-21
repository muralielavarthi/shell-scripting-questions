#!/bin/bash

mkdir dummy; cd dummy

for i in {1..10}
do
    touch $1
done