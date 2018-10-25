#!/bin/bash


#AssociativeArray

declare -A AssociativeArray #named form.
declare -a NumericArray #Numeric form.

#Set values in Associative Array, kind of like just making variables, with index numbers.
AssociativeArray[poop]="Var1" #you can call the index anything you want "Var1" is clearly a variable, can also be anything you want.
AssociativeArray[Var2]="Var2"

#check if values exist in Associative Array
if [ "${AssociativeArray[poop]}" ]; then # start an if with [], and then same as the other array example, you must start with "" then call the variable with $ name the variable in{} and list the index with [].
  echo "Good news, Var1 exisits"
else
  echo "So sorry, Var1 has been obliterated."
fi

if [ "${AssociativeArray[Var3]}" ]; then
  echo "Var3 exists"
else
  echo "Sorry, Var3 has been thrown into the rancor pit"
fi
