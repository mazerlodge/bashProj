#!/bin/bash

for FILE in ./data/*; 
do
	currFile=$FILE;
	#echo $currFile; 

	# SourceSystem_Topic__20210501120009.txt
	filePrefix=${FILE:0:27}
	echo $filePrefix

	# only check datestamp on files that match the target prefix
	if [ "$filePrefix" = "./data/SourceSystem_Topic__" ]; 
	then 
		dateStamp=${FILE:27:14}
		echo $dateStamp 

	fi 

done
