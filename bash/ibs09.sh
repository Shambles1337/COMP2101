#!/bin/bash

############
#NOTES REGARDING STANDARD OUTPUT AND input
#STANDARD OUTPUT

#stanadard output is basically anything that is shown in the terminal that is not an error.
#/dev/null anything that gets moved into /dev/null is never seen or heard from again.
#/dev/null is basically a permanent black hole.
#whenever you output something to a file for eg. ls -l >file.txt if that file already exists it will overwrite that file.
#It will empty out the file and replace it with that output.
#When using redirection operatators (>) if you use one > to replace the file, and >> will move the standard output to the end of the file.
##

#STANDARD INPUT
#Allowing the user to enter thier own data for a variable.
##

#STARDARD ERROR
#ls /root is an example of something that will create an error every time if you enter it as a non root user.
#redirect errors eg. ls /root 2> errors.txt
#the reason why its 2> is because standard input is 0, standard output is a 1, and standard error is a 2.
#Input is 0
#Output is 1
#Error is 2


##########
#Script
##########

#This script will allow the user to enter a variable which will then be output to the terminal.

echo "Please enter your name:"
read myname #read whatever it is the user is about to type and store it in a variable.
echo "You entered: $myname" #Type in the name of the variable to recall.

ls /root 2> errors.txt #This is redirecting ONLY errors to this text file.
