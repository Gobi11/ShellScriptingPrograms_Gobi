#!/bin/bash/
echo "###To find the substring position in the given string###"
read -p "Enter the string:" a
echo ""
read -p "Enter the substring to be searched from the given string:" test
echo ""
awk -v a="$a" -v b="$test" 'BEGIN{print index(a,b)}'



