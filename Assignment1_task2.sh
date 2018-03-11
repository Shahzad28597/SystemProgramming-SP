#!/bin/bash

fileName=$1
declare -i lineNo
lineNo=1
cat $fileName | while read -r line
do 
	if [ `expr $lineNo % 2` -eq 0 ]
	then
		echo $line>>evenline.txt
	else
		echo $line>>oddline.txt
	fi
	lineNo=$(($lineNo+1)) 
done 