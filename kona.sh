#!/bin/bash

# problem is sometimes the terms have two words 
# may need to use -hi term one -en term two 
# then would need to parse out flags vs terms. 
hiterm=$1
enterm=$2

printf "%s %s" $hiterm $enterm 
