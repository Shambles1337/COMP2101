#!/bin/bash

##################
#Report Title

echo "Memory Report:
"
####################



##################
# Main
##################


free -h | awk 'NR==2{print "Total RAM: " $2"B,", "Free: " $4"B"; exit }' #Display the total amount of RAM installed and the amount of free RAM
free -m | awk 'NR==2{printf "Sum of used and cached RAM: %.2fGB\n", ($3+$6)/1000; exit }' #Calculate and display the sum of the used and cached RAM
free -m | awk 'NR==2{print "Difference between available and free RAM: " $7-$4"MB"; exit }' #Calculate and display the difference between the available and free amounts
free | grep Mem | awk '{printf "Shared: %.2f%%\n", ($5/$2 * 100"%") }' #Calculate and display how much RAM is shared as a percentage of the RAM used
free -h | awk 'NR==2{printf "Total RAM Used: %.2f%%\n",  $3/$2 * 100"%" }' #Calculate and display how much RAM is used as a percentage of the total RAM
free -m | awk 'NR==2{printf "Total Cache Used: %.2f%%\n", $6/$2 * 100"%" }' #Calculate and display how much RAM is used for cache as a percentage of the total RAM
