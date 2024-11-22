#!/bin/bash
#example of break in a loop
read -p "Enter the Number You Wnat to Find : " no
for i in {1..100}
do
	if [[ $no -eq $i ]]
	then
		echo "$no is found!!!"
		break
	fi
	echo "Number is $i"
done
