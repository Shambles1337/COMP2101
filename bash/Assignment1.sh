#!/bin/bash

#
#Variables
count=2
sides=6
#

while [ $# -gt 0 ]; do
  #work on $1
  case "$0" in
    -h)
    #found help option
    displayhelp
    exit 0
    ;;
esac

    case "$1" in
      -c|--count)
      if -c[ "$2"=- ^[1-9]];
      then
        count="$2"
      fi
      exit 0
    ;;
esac

  case "$2" in
    -s|--sides)
    if -s[ "$2"=- ^[4-20]];
    then
      sides="$2"
    fi
    exit 0
    ;;
esac

case "$3" in
    *)
    #Bad args
    echo "Error bad input '$1'" >&2 #>&2 is standard out 2
    exit 1
  esac
done


sum=0
while [ $count -gt 0 ]; do
    roll=$(( $RANDOM % $sides +1 ))
    sum=$(( $sum + $roll ))
    echo "Rolled $roll"
    count=$((count - 1))
done
echo "You rolled a total of $sum"
