#!/bin/bash
#monitoring the free file system disk space

FU=$(df -H | egrep -v "Filesystem|tmpfs" | grep "udev" | awk '{print $5}' | tr -d %)
if [[ $FU -gt 80 ]]
then
	echo "Warning Disk Space is Running Low!"
else
	echo "All Good Go Ahead!"
fi
