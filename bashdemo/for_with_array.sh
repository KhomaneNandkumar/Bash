#!/bin/bash
myArray=(31 NandkumarKhomane MandavganPharata IndiraCollege LentraAILimited)
length=${#myArray[*]}
echo "the length of myArray is $length"

for (( i=0;i<$length;i++ ))
do
	echo "The element of Array is ${myArray[$i]}"
done
