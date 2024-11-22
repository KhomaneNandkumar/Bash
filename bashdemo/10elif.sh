#!/bin/bash

read -p "Enter Your Marks " marks
if [[ $marks -ge 80 ]]
then
	echo "First Class"
elif [[ $marks -ge 60 ]]
then
	echo "Second CLass"
elif [[ $marks -ge 40 ]]
then
	echo "third Class"
else
	echo "You Are Fail"
fi
