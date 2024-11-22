#!/bin/bash
#Array
myArray=(31 "Nandkumar Khomane" "Mandavgan Pharata" 7248938045 "Indira College of Commerce and Science")

echo "My Roll number is:${myArray[0]}"
echo "my Name is :${myArray[1]}"
echo "my villege name is: ${myArray[2]}"
echo "my Mobile Number is :${myArray[3]}"
echo "my College name is : ${myArray[4]}"

# how to get the length bof the array
echo "The length of this array is ${#myArray[*]}"

# how to get specific values
echo "Values from index 2-4 ${myArray[*]:2:3}"

# how to update the Array

myArray+=(New 30 40)
echo "The Values of myArray is:${myArray[*]}"



