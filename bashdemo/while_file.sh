#!/bin/bash
while read myVar
do
	echo $myVar
	sleep 1s
done <  ls_result.txt
