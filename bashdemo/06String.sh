#!/bin/bash

#String Operations
myVar="Heyy Hello My Name Is Nandkumar Khomane i Am Currently Working in Lentra As a Full Stack Developer "
myVarLength=${#myVar}
echo "Length of Myvar is :${myVarLength}"

# Convert into UpperCase

echo "Upper Case is --> ${myVar^^}"

# Convert into Lowercase

echo "Lower Case is--> ${myVar,,}"
 
# Replace Existing String character With Other Character

newmyVar=${myVar/Lentra/MicroSoft}
echo "${newmyVar}"

# TO Print The Selective Indexes Only Using Slicing
slicevar=${myVar:0:11}
echo "${slicevar}"



