#!/bin/bash

#This is another script which prints out "Hello World" but uses a variable.

Hello="Hello World" #Hello is the name of the variable and "Hello World" are the contents.

echo $Hello #Use $variable_name to recall the contents of the variable.

#This is useful if you want to recall the same thing later in a script.

echo $Hello
echo $Hello
echo $Hello
echo $Hello

#Or repeat the same thing multiple times.
#Also, using a variable you only need to change, 
#the variable and then every place later will be changed instead of doing it line by line.
