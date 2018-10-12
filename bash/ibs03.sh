#!/bin/bash

#This is a script which will monitor disk space.

df -h #df means Disk Free, and -h means make it human readable.
##################################
watch df -h #When you add watch to it, the script will activley monitor disk space by updating it every 2 seconds.

#Unfortunatley, these commands work when entered into terminal, but I get a "bash: ./ibs03.sh: Permission denied" when i run the script.
#After some testing i determined that this will only work when using "bash filename.sh" not sure why. Ask prof.


#Another example of a useful script to run would be the following:

#sudo apt-get update && sudo apt upgrade
