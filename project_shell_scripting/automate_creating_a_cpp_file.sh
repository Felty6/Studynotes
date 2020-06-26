#!/bin/bash 

echo "
#################################
## Welcome to C++ File Creator ##
#################################
"

create_header() 
{
   timestamp=$(date)
   echo "/*" 
   cat << EOF   
* URL:
* Author: $1
* Timestamp: $timestamp
EOF
echo " */"
}

create_body()
{
   cat << EOF 

#include <iostream>

using namespace std;

int main() {
   // code goes here    
}

EOF
}

check_name_exists()
{
   while [ -e "$program_name" ];
   do 
	echo ">>> $program_name: the file already exists, please try another name: "
	read program_name
   done 
}

main() 
{
   local program_name=""
   local author
   local default_name="my_program.cpp"

   echo "Enter the author's name: "
   read author  
   echo "Enter program name: "
   read program_name 
   
   if [ "x$program_name" == "x" ]; then 
	program_name="$default_name"
   fi

   check_name_exists
   
   header=$(create_header "$author")
   body=$(create_body)
   echo "$header" "$body" | tee "$program_name"
}
main 
