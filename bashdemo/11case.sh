echo "Provide an option"
echo "a for Print the Date"
echo "b for list all the scripts in the directory"
echo "c for check the currnt location"


read choice 
 case $choice in 
	 a)date;;
	 b)ls -ltr;;
	 c)pwd;;
	 *)echo "please Provide a valid choice "
 esac 
