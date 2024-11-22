#!/bin/bash

FILEPATH="/home/nandkumarkhomane/Desktop/Learning/bash/bashdemo/namess.txt"

if [[ -f $FILEPATH ]]
then
	echo "File is Exist"
else
	echo "File is not Exist"
fi
