#!/bin/bash

echo " ###Leap Year Check Program### "

year=0
yearValue="false"

echo -n "Enter the year to be checked : "
read year

# find out if it is a leap year or not

if [ $((year % 4)) -ne 0 ] ; then : 
elif [ $((year % 400)) -eq 0 ] ; then   
   yearValue="true"
elif [ $((year % 100)) -eq 0 ] ; then :
else   
   yearValue="true"
fi
if [ "$yearValue" == "true" ];
then
   echo "Enetered year $year is a leap year"
else
   echo "Entered year $year is not a leap year"
fi