#!/bin/bash


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
