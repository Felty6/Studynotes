#!/bin/bash

# This is a script to produce an html file

### Variables ###
title="Felty's Website"
greet="Welcome!"
info="System Information for"
current_time="$(date +"%x %r %Z")"
time_stamp="This is updated on $current_time by $USER"

### Functions ###

system_info()
{
   #This is just an example 
   echo "function system information"
   echo "<p>Function not yet implemented</p>"
}

show_uptime()
{
   #This is just an example
   echo "<h2>function show uptime</h2>"
   echo "<pre>"
   uptime
   echo "</pre>"
}

drive_space()
{
   #This is just an example
   echo "function drive space"
   echo "<pre>"
   df
   echo "</pre>"
}

home_space()
{
#This is just an example
   echo "<h2>function home space</h2>"
   echo "<pre>"
   echo "Bytes Directory"
   du -s /home/* | sort -nr 
   echo "</pre>"
}

### Main ###
cat <<- _EOF_
 <html>
 <head>
   <title>
     $title 
   </title>
 </head>
 
 <body>
   <h1>$greet</h1>  
   $info $HOSTNAME
   <p>$time_stamp</p>
   $(system_info)
   $(show_uptime)
   $(drive_space)
   $(home_space)
 </body>
 </html>
_EOF_


