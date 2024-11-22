#!/bin/bash
#Thursday 19 September 2024 09:30:00 AM IST
# Script for getting files that have in size more than 20 MB and stored them into one archive folder

BASE="/home/nandkumarkhomane/Desktop/Learning/bash/bashdemo/Projects"
DAYS=10
DEPTH=1
RUN=0

#check if the directory is present or not
if [[ ! -d $BASE ]]
then
	echo "The Given Directory is not Present $BASE"
	exit 1
fi
# Create Archive folder if not exist
if [[ ! -d $BASE/archive ]]
then
	mkdir $BASE/archive
fi

# find the list of files larger than 20 MB
for i in `find $BASE -maxdepth $DEPTH -type f -size +20M`
do
	if [ $RUN -eq 0 ]
	then
		gzip $i || exit 1
		mv $i.gz $BASE/archive || exit 1
	fi
done
