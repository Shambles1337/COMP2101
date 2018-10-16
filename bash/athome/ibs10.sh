#!/bin/bash

#while loops


myvar=1 #myvar is a variable i created.

while [ $myvar -le 10 ] #while starts the while loop. In brackets is the name of the variable. And we're using -le (less than or equal to) and then 10.
do #and then if it is its going to do everything in the next block.
  echo $myvar #this will print whatever the variable equals
  myvar=$(( $myvar + 1)) #and then this will increment it by 1
  sleep 0.5 #it will then sleep for 1/2 second before it goes through the loop again .
done #once the variable reaches 10 it will end the loop. otherwise it will run forever.
#You can break out of a loop by pressing ctrl+c
