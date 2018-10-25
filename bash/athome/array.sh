#!/bin/bash

# Arrays


declare -A AssociativeArray #Array index is in named form
declare -a NumericArray #Array index is in numeric form



#Local array
function Foo() {
  local -a LocalArray #Numeric array which only exists in a function.

  LocalArray[0]="Hi" #Localarray is the name of the array [0] is the index, hi the content.
  LocalArray[1]="there"
  LocalArray[9]=15 #No need to be consecutive or in a string.

  #Read specific values
  echo "${LocalArray[0]} ${LocalArray[1]}" #need quotes to read it, ${variable_name} and [] to refrence the item in the array.
  #you can place multiple indexes on one line as seen above.

  #Read entire Array
  echo "${LocalArray[@]}"
}

#Call function Foo
Foo
