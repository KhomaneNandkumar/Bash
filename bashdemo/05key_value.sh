#!/bin/bash

# How to Stored Key Value Pair

declare -A myArray
myArray=([name]=Nandkumar [age]=23 [city]=PCMC)
echo "Name is ${myArray[name]}"
echo "Age is ${myArray[age]}"
echo "City is ${myArray[city]}"
