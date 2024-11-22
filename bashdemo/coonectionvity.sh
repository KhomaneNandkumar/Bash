#!/bin/bash
read -p "Which Site you want to check?" site

ping -c 1 $site
#sleep 3s
if [[ $? -eq 0 ]]
then
	echo "Succesfully Connected to the $site"
else
	echo "Unable to Connect to the $site "
fi
