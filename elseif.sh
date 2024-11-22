#!/usr/bin/bash

read input

if [[ $input -gt 10 ]]
then
	echo "Number Is Greater Than 10"
elif [[ $input -lt 10 && $input -gt 5 ]]
then
	echo "Number is Between 5 and 10"

else
	echo "Number is Less than 10"
fi
