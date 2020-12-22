#!/bin/bash 

# TODO: this looses the last param, determine why.

x=0
while [ $x -lt $# ] 
do	
    x=$((x + 1))
	cmdText="ls -l $1"
	echo $cmdText 

	shift 
done
