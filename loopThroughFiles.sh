#!/bin/bash

declare -i maxDatePart=0
declare -i maxTimePart=0
for currFile in ./data/*; 
do
	# SourceSystem_Topic__20210501120009.txt
	filePrefix=${currFile:0:27}
	echo "Working on file with prefix $filePrefix"

	# only check datestamp on files that match the target prefix
	if [ "$filePrefix" = "./data/SourceSystem_Topic__" ]; 
	then 
		dateStamp=${currFile:27:14}
		echo "Got dateStamp $dateStamp"

		# capture date part and time part as numbers
		declare -i datePart=${dateStamp:0:8}
		declare -i timePart=${dateStamp:8:6}
		echo "Dp $datePart Tp $timePart"

		# compare to max values, replace if current file's datePart is bigger. 
		if [ $datePart -gt $maxDatePart ];
		then
			maxDatePart=datePart
			maxTimePart=timePart
			echo "reset max vals to $maxDatePart and $maxTimePart"
		elif [ $datePart -eq $maxDatePart -a $timePart -gt $maxTimePart ];
		then
			# if dates match and current time part is bigger replace max values.
			maxDatePart=datePart
			maxTimePart=timePart
			echo "dates matched, reset max vals based on time to $maxDatePart and $maxTimePart"

		fi

	fi 

done
