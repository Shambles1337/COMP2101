#!/bin/bash

#The case statement
#a case statement is useful if you want to create a menu and then have your users select an option within the menu and then react to it.



echo "What is your favorite Ninja Turtle?" #Before you start a case statement you should tell the user what you want them to do.
#asking the user what is thier favorite ninja turtle.
######################
#       Menu
#The menu selection will display the possible choices they can use.

######################
echo "1 - Raphael."
echo "2 - Leonardo."
echo "3 - Michelangelo."
echo "4 - Donatello."

######################

read turtle; #stores and creates a variable based on the user's selection.

case $turtle in
  1) echo "Raphael is cool, but rude.";;
  2) echo "Leonardo leads.";;
  3) echo "Michelangelo is a party dude.";;
  4) echo "Donatello does machines.";;
  *) echo "Did you even watch the show?";; #If the user entered anything that was not one of those numbers then it will advise them its not valid.
esac #This is just case backwards similar to fi.

#when using case statements you don't need to keep everything on one line.. see below for ex.
#case $turtle in
# 1) echo "Raphael is cool, but rude."
#        code
#        code
# ;;   - The doube semi-colon ends that section.
