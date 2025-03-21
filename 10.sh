#!/bin/bash

echo "enter user name"
read USERNAME
echo "enter password"
#read PASSWORD (-p:password not visible in terminal)
read -p PASSWORD

if [ $USERNAME == "admin" ] && [ $PASSWORD == "admin" ]
then
    echo "Login Success"
else
    echo "Wrong Login"
fi