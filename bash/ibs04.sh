#!/bin/bash

#### A script demonstrating how to execute math statements in bash.

expr 30 + 10 #This will add 30 and 10 and return the answer.

expr 30 / 10 #This will divide 30 by 10

expr 100 \* 4 #You must use the \ in front of the * for mult, because the astrisk is a wildcard operator in linux and bash.

mynum1=100 #Created a variable mynum1 which contains 100.
echo $mynum1 #print mynum1 variable.
expr $mynum1 + 50 #This will add the variable mynum1 and 50, and output the answer.
expr + $mynum1 #This will do the same thing as the previous example.

let mynum2=mynum1+1 #this line creates another variable (mynum2) and makes it equal to mynum1 + 1.
#you wont see the result unless you tell bash to print it...
echo $mynum2 #print mynum2.
