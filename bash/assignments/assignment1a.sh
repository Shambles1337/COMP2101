#!/bin/bash

########
#Variables

sum=0
count=2
sides=6
debug=0
############


######################
#Display Help function
function displayhelp {
  echo "Usage: $(basename $0) [-h]--help [-d]--debug N]"
}
########################
while [ $# -gt 0 ]; do
  #work on $1
  case "$1" in
    -h)
    #found help option
    displayhelp
    exit 0
    ;;

    -d|--debug)
    #found the debug option
    debug="$2"
    shift
    exit 0
    ;;

    -c|--count)
    if -c[ "$2"=- ^[1-9]];
    then
    count="$2"
  fi
    ;;

    *)
    #Bad args
    echo "Error bad input '$1'" >&2 #>&2 is standard out 2
    exit 1
  esac
done

###########
#This rolls 2 dice for you and tells you what you rolled.
##########


while [ $count -gt 0 ]; do
    roll=$(( $RANDOM % $sides +1 ))
    sum=$(( $sum + $roll ))
    echo "Rolled $roll"
    count=$((count - 1))
done
echo "You rolled a total of $sum"
