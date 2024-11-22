#!/bin/bash
FILEPATH="/home/nandkumarkhomane/Desktop/Learning/bash/bashdemo/nk.txt"
if [[ -f $FILEPATH ]]
then 
	echo "File Is Exist"
else
	echo "Created File Successfully"
	touch $FILEPATH
fi
