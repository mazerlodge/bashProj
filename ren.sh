#!/bin/bash

# Note: single quotes required, no dots in before and after suffixes
# invocation syntax: ./ren.sh beforeSuffixNoDot afterSuffixNoDot '*.DAT'
beforeSuffix=$1
afterSuffix=$2
fileRoot=$3

# printf "got %s %s %s\n\n" $fileRoot $beforeSuffix $afterSuffix

for file in $fileRoot; do   
	/bin/mv $file "$(basename $file $beforeSuffix)$afterSuffix" 
done

