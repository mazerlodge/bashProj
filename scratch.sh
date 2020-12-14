#!/bin/bash
# Restricting an array as a readonly
readonly -a shells=("ksh" "bash" "sh" "csh" );
echo ${#shells[@]}
# outputs the number of elements in the array, changing @ to 3 outputs 3 

# Trying to  modify an array, it throws an error
#shells[0]="gnu-bash"

echo ${shells[@]}
