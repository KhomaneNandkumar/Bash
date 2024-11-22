#!/bin/bash
#Generating a random number between 1 to 8

NO=$(( $RANDOM % 8 + 1))
echo "Number is $NO"
