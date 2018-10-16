#!/bin/bash

#My first script for the at home labs.

cat <<EOF
Hello World!
I am process # $$
EOF

#The shell interprets the  << operator as an instruction to read input until
#it finds a line containing the specified delimiter.

#EOF is a delimiter, as shown below anything can be set as the delimiter.
#All the input lineupto the line containting the delimiter are then fed to the command.


######
#Example of custom delimiter.
######
cat <<poop
Silence Worm!
I am process # $$
poop
