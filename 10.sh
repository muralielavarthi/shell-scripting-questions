#!/bin/bash

echo "enter user name"
read USERNAME
echo "enter password"
read PASSWORD

if [ $USERNAME == "admin" ] && [ $PASSWORD == "admin" ]
then
    echo "Login Success"
else
    echo "Wrong Login"
fi