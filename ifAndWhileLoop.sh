#!/bin/bash

# get baseline for checking sleep
date

# check for command having a parameter
if [ ! -z $1 ] 
then 
    echo "test 1 - parameter was found in bang (last command) val = " $1 
fi 

# check for command having a parameter
if [ -z $1 ] 
then 
    echo "test for param - parameter was not found " 
fi 


x=1

while [ $x -lt 6 ] 
do
    # bash syntax for variable assignment 
    echo Hi $x
    x=$((x + 1))
    sleep 1
done

# check how long sleep took.
date 
 

