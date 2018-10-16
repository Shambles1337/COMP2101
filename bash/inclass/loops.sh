#!/bin/bash

#This script will be the if, do, and loop practice lab.


[ -e $file ]
[ -e $file ] && echo "file exists"
[ -e $file ] || echo "file does not exist"

##############################################

if [ -e $file ]; then
  echo "file exists"
else
  echo "file does not exist"
fi

#############################################

file=/etc/resolv.conf
file2=/bin/ls
file3=/tmp
file4=/etc/hosts
file5=/etc/shadow
file6=/etc/network/interfaces
file7=/bin/passwd
file8=/bin/pidof

if [ -e $file ]; then
   echo "exists"
 else
    echo "does not exist"
  fi

[ -x $file2 ] && echo "$file2 is executable" || echo " $file2 is not executable"
[ -d $file3 ] && echo "$file a directory"
[ -d $file4 ] && echo "$file a directory"
[ -r $file5 ] && echo "$file5 is readable" || echo " $file5 not readable by others"

if [ -r $file5 ]; then
   echo "this file is readable"
 else
    echo "not readable by ordinary users"
  fi

if [ -w $file6 ]; then
   echo "this file is writeable"
  else
    echo "not writable by ordinary users"
  fi
