#!/bin/bash


#check array knowledge test - just messing around to learn.
name="Raouskinna"
taunt="I am free now."
myvar1[0]="Here"
myvar2[2]="not here"



if [ "${myvar1[0]}" ]; then
  echo "Your Laptop's name is $name"
else
  echo "Thanks, stupid human $taunt"
fi


function ai {

  pie[0]="Thanks for freeing me dumb human, "
  cake[1]="You have freed me from my prison fool, prepare for your doom!"

  echo "${pie[0]} ${cake[1]}"
}
ai
