#!/bin/bash

files=( `ls` )
for fileName in ${files[@]}
do
	echo $fileName
	IFS=$'.' exten=( $fileName )
#	echo $fileName
	echo "extension : " ${exten[1]}
	if [ -d ${exten[1]} ]
	then
#		echo ${exten[1]}
		IFS=$" "
		mv $fileName ${exten[1]}
	else
		IFS=$" "
		mkdir ${exten[1]}
		mv $fileName ${exten[1]}
	fi 
	
done