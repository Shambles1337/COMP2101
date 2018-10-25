#!/bin/bash
#
# this script produces the dynamic output from the lab instructions
# it should look like
#   Welcome to planet hostname, title name!
#   Today is weekday.

##############
# Variables  #
##############
titles=("Supreme Commander" "Boss" "Big Boss" "Professor" "Nice Guy" "Mr.")
title_index=$(($RANDOM % ${#titles[@]}))
title=${titles[$title_index]}

hostname=$(hostname)
myname="Dennis"
today=$(date +%A)

########
# Main #
########
welcome_message="

Welcome to planet $hostname, $title $myname!
Today is $today.

"
echo "$welcome_message" |cowsay -f dragon
