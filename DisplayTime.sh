#!/bin/bash

#Current time created a method
hour=$(date +"%H")
currentTime(){
now=$(date +"%T")
echo "Current time is : $now"
}

# Time calculation
 if [ $hour -ge 6 -a $hour -lt 12 ]
then
  greet="Good Morning, $whoami"
  
elif [ $hour -ge 00 -a $hour -lt 18 ] 
then
  greet="Good Afternoon, $(whoami)"
  
  elif [ $hour -ge 18 -a $hour -lt 21 ] 
then
  greet="Good Evening, $whoami"
  
else 
  greet="Good Night, $whoami"
  
fi
 

echo $greet
currentTime
