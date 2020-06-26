#!/bin/bash


enter_button() 
{
    # -e: enables the interpretion of backslash escape 
    # -n: not outputting the trailing new line  

    echo -en "\nPlease press the Enter Button to continue"
    read 
    clear 
}

selection=
until [ "$selection" = "0" ]; do
    echo "
-**- PROGRAM MENU -**-
    1 - Display free disk space
    2 - List Today's Date 
    3 - List your home directory 
	
    0 - exit program
	 "
    echo -n "Enter selection: "
    read selection
    echo ""
    case $selection in
        1 ) df ;;
        2 ) date ;;
	3 ) ls $HOME ;;
        0 ) exit ;;
        * ) echo "Please enter 1, 2, or 0"
    esac
done
