#!/bin/bash
user_exist()
{
for i in `more -1 /etc/passwd`
do
var1=$i
var2=${var1%%\:*}
if [ $var2==$1 ]
then
echo "The User Exists..!"
exit
fi
done
echo "No User Found..!!"
}
user_exist
