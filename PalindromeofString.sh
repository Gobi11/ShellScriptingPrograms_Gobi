#!/bin/bash
echo "###Palindrome program - String###"

len=0
i=1

echo ""
echo -n "Enter The String: "
echo ""
read str
len=`echo $str | wc -c`
len=`expr $len - 1`
halfLen=`expr $len / 2`
while [ $i -le $halfLen ]
do
c1=`echo $str|cut -c$i`
c2=`echo $str|cut -c$len`
if [ $c1 != $c2 ] ; then
echo "Entered string $str is not a palindrome"
exit
fi

i=`expr $i + 1`
len=`expr $len - 1`
done
echo "Entered string $str is a palindrome"
