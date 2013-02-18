#!/bin/bash


echo "read special field from /ect/passwd"
IFS=:
#cat /etc/passwd|cut -d :  -f 1
#cat /etc/passwd
while read name
do
	echo "name is $name"
done < ~/passwd.txt 
