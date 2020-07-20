#!/bin/bash 
echo "###Palindrome program - Numbers###"
echo -n "Enter a number: "
read n
 
sd=0
rev=""
 
on=$n
 
while [ $n -gt 0 ]
do
    sd=$(( $n % 10 )) 
    n=$(( $n / 10 )) 
    rev=$( echo ${rev}${sd} ) 
done
 
if [ $on==$rev ];
then
  echo "Entered Number $on is a palindrome number"
else
  echo "Entered Number $on is NOT a palindrome number"
fi
