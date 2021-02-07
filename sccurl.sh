#!/bin/bash

# sccurl.sh https://hostname/subject/folder/ra802x00 4 q
# root of URL + number of cycles + prefix for output file.

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
while [ $x -lt $2 ] 
do
    # bash syntax for variable assignment 
    echo Hi $1$x.jpg
    curl $1$x.jpg -o $3$x.jdat
    x=$((x + 1))
    sleep 1
done


# check how long sleep took.
date 
