#!/bin/bash 

if [ -d ~/Documents/cis18a ]; then
	echo "You have a CIS 18A directory. You are all set."
else 
	echo "You do not have a CIS 18A directory." 
fi

#------------------------#

if [ $(id -u) != "0" ]; then 
	echo "To continue, you must be the superuser to run the script" >&2
	exit 1
fi

#------------------------#

number=1

if [ $number = "1" ]; then
	echo "The number will equal to 1"
else
	echo "The number does not equal to 1"
fi
set +x 

#------------------------#

echo -n "Please enter some text: "
read text 
echo "You have just entered: $text" 

#------------------------#

number=0

echo -n "Please enter a number: "
read number

echo "The number that you entered is $number"
if [ $((number % 2)) -eq 0 ]; then
	echo "The number is even"
else 
	echo "The number is odd"
fi

#------------------------#

echo -n "Enter a number between 1 through 3: "
read character 
case $character in
   1 ) echo "You entered one."
	;;
   2 ) echo "You entered two."	
	;;
   3 ) echo "You entered three."
	;;
   * ) echo "You did not enter number between 1 and 3." 
esac 
