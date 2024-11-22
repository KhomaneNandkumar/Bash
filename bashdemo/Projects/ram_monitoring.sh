#!/bin/bash
FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')
echo "The Free space on the Ram is $FREE_SPACE"

TH=500
if [[ $FREE_SPACE -lt $TH ]]
then 
	echo "WARNING Ram is Running Low!"
else
 	echo "RAM is Sufficient $FREE_SPACE"
fi
