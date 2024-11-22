#!/bin/bash
#getting values from the file
FILE="/home/nandkumarkhomane/Desktop/Learning/bash/bashdemo/names.txt
"
for name in $(cat $FILE)
do
	echo "Name is $name"
done
