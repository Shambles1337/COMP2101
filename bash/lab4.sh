#!/bin/bash

#this script will display all the command line args
#it will also display how many things are on the command ine while we do it

#######
#example 1
###########

#while [ $# -gt 0 ]; do
  #work on 1
#  echo "found '$1' on the command line"
#  shift
#  echo "there are $# things left to process"
#done

#echo "finished processing the command line"

##########
#example 2

# This is similar to Add command line arguments to a script in the Assignment
# And the Command Source Identification Section.
# The comments are also how he wants them in the Assignment.
###########

#####
#Variables
# default value for debug is 0
delcare -i debug
debug=0

##########

#######
#Functions
########

function displayhelp {
  echo "Usage: $(basename $0) [-h]--help [-d]--debug N]"
}
# This can be used for debugging
# echo "There are $# things on the command line"
while [ $# -gt 0 ]; do
  #work on $1
  case "$1" in
    -h)
    #found help option
    displayhelp
    ;;
    #--help)
    ### You can use either -h or --help both is redundant.
    #found the help option
    #displayhelp
    #;;
    -d|--debug)
    #found the debug option
    debug="$2" # TODO: should validate debug number
    shift
    ;;
    *)
    #Bad args
    echo "I didn't recognize '$1'" >&2 #>&2 is standard out 2
    exit 1
    ;;
  esac
  shift
  #This can be used for debugging
  #echo "There are $# things left to process"
done

echo "Finished processing on the commannd line"
echo "debug variable is set to ''$debug'"
