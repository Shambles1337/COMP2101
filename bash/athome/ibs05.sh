#!/bin/bash

#IF STATEMENTS

#################
#Variables
mynum=100
#################

if [ $mynum -eq 200 ] #This will test to see if mynum is equal to 200.
then #So, IF mynum is equal to 200 do the following:
  echo "It is equal to 200" #Print out "It is equal to 200 if mynum is equal to 200"
else echo "mynum is not equal to 200." #If mynum isn't equal to 200 THEN print this.
fi #close the if statement.
