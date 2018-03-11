#!/bin/bash

read -p "Enter a file name : " fileName
cat $fileName
sort $fileName | uniq -u > aNewfile
rm $fileName
cat aNewfile>$fileName
rm aNewfile
echo "All the identical lines removed..!"
echo "Here is the new file..!"
cat $fileName
