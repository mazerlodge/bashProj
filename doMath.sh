#!/bin/bash 

a=12
b=7
c=$(($a % $b))
d=$(($a ** $b))
printf "%d %d %d %d\n" $a $b $c $d
