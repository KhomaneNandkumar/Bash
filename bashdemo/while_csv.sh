#!/bin/bash
cat test.csv | awk 'NR!=1{print}'|
while IFS="," read id name age
do  
	echo "ID Is $id"
	echo "Name is $name"
	echo "Age is $age"
done 

