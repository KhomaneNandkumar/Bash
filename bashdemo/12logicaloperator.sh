#!/bin/bash

#AND Operator
read -p "What is Your Age " age
read -p "Your Country " country

#to comapre the string always use == symbol 
#to compare numeric values always use -eq 
if [[ $age -ge 18 ]] && [[ $country == "india" || $country == "INDIA" ]]
then
	echo "You Can Vote"
else
	echo "You Cant Vote"
fi
