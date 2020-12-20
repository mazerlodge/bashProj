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

# check for non-empty arguments 
# definition in man page ($man test): true if the length of the string is nonzero (aka has content).
isEmpty=""
hasContent="stuff"
# NOTE: Quotes are required for proper evaluation.
if [ -n "$isEmpty" ]
then
	printf "test -n (not empty) returned true for isEmpty variable. content=[%s]\n" $isEmpty
else
	printf "test -n (not empty) returned false for isEmpty variable. content=[%s]\n" $isEmpty
fi 

if [ -n "$hasContent" ] 
then
	printf "test -n (not empty) returned true for hasContent variable. content=[%s]\n" $hasContent 
else
	printf "test -n (not empty) returned false for hasContent variable. content=[%s]\n" $hasContent
fi 

# NOTE: Quotes are required for proper evaluation.
if [ -z "$isEmpty" ]
then
	printf "test -z (empty, or 'zero' file) returned true for isEmpty variable. content=[%s]\n" $isEmpty
else
	printf "test -z (empty, or 'zero' file) returned false for isEmpty variable. content=[%s]\n" $isEmpty
fi 

if [ -z "$hasContent" ] 
then
	printf "test -z (empty, or 'zero' file) returned true for hasContent variable. content=[%s]\n" $hasContent 
else
	printf "test -z (empty, or 'zero' file) returned false for hasContent variable. content=[%s]\n" $hasContent
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
 

