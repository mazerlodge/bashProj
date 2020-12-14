#!/bin/bash 

###
#Write a script, using $RANDOM, to write the following output both to a file and to a variable. The following numbers are only to show the format; your script should produce different numbers:
# 1988.2365
#13798.14178
#10081.134
# 3816.15098
### 
for x in {1..4} 
do
	r1=$RANDOM 
	r2=$RANDOM
	printf "%5d.%d\n" $r1 $r2
done

a=12
b=7
c=$(($a % $b))
printf "%f %f %f\n" $a $b $c
