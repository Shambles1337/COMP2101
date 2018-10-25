#!/bin/bash

#Understanding environment variables.



title="Supreme Overlord" #This is a regular variable.
hostname=$(hostname) #This variable refrences the hostname of the machine.
day=$(date +%A) #This variable will output the day of the week.


echo "Welcome to planet $hostname, $title, it is $day" #Outputs all of the data on one line.
