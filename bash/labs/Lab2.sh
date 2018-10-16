#!/bin/bash
#a script to issue a name with a title

################################
#       Variables             #
################################
export MYNAME="Christopher Jackson "
mytitle="The Supreme Overlord "
hostname=$(hostname) #poor choice of variable name, same as something else
weekday=$(date +%A) #Try to always place all your variables at the start of the script together

##################
#      Main      #
##################

echo "this is workstation ${hostname}, and belongs to $mytitle${MYNAME}"
echo "The day of the week is ${weekday}."

####################
#     Part 2      #
####################

titles=("Supreme Overlord" "Boss" "Lord" "King" "His Grace" "His Excellency")
title_index=$(($RANDOM % ${#titles[@]}))
title=${titles[$title_index]}

hostname=$(hostname)
myname="Christopher"
today=$(date +%A)

########
# Main #
########
welcome_message="

Welcome to workstation $hostname, $title $myname!
Today is $today.

"
echo "$welcome_message" |cowsay -f dragon
