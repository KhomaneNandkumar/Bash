#!/bin/bash

function add () {
read -p "ENter the First Number: " num1
read -p "Enter the Second Number: " num2
let num1=$1;
let num2=$2;
let sum=$1+$2
echo "Sum of $num1 and $num2 is $sum "
}
function sub () {
read -p "ENter the First Number: " num1
read -p "Enter the Second Number: " num2
let num1=$1;
let num2=$2;
let sub=$1-$2
echo "Substraction of $num1 and $num2 is $sub "
}

function mul () {
read -p "ENter the First Number: " num1
read -p "Enter the Second Number : " num2
let num1=$1;
let num2=$2;
let mul=$1*$2
echo "Multiplication of $num1 and $num2 is $mul "
}

function div () {
read -p "ENter the First Number: " num1
read -p "Enter the Second Number: " num2	
let num1=$1;
let num2=$2;
let div=$1/$2
echo "Division of $num1 and $num2 is $div "
}
while true
do
echo "Enter Your Choice :
      A: FOr Addition
      S: For Substraction
      M: For Multiplication
      D: For Division
      E):exit"

read choice
case $choice in
	A)add num1 num2 ;;
	S)sub num1 num2 ;;
	M)mul num1 num2 ;;
	D)div num1 num2 ;;
	E)exit ;;
	*) echo "Please choose a Valid Choice" 
	
esac
done
