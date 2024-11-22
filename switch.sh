#!usr/bin/bash
read input 
case $input in
	"java")
		echo "java is backend Language"
		;;

	"go")
		echo "go is backend language"
		;;
	"html")
		echo "html is frontend language"
		;;
	*)	
	 	echo "Default Case"
esac	
