#!/bin/bash
#a script to issue a name with a title

################################
#       Variables             #
################################
export MYNAME="Christopher Jackson "
mytitle="The Supreme Overlord "
hostname=$(hostname) #poor choice of variable name, same as something else
today=$(date +%A) #Try to always place all your variables at the start of the script together

##################
#      Main      #
##################
echo "welcome to the planet of ${hostname}, $mytitle ${MYNAME}"
echo "Today is ${today}."
