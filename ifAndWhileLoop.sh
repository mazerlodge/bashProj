#!/bin/bash

if [ ! -z $1 ] 
then 
    echo $1 
fi 

x=1

while [ $x -lt 5 ] 
do
    # bash syntax for variable assignment 
    x=$((x + 1))
    echo Hi $x
    sleep 1
done
 

