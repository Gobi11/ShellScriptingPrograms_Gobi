echo "###Program to find vowels in a string###"
echo ""
echo -n "Enter any string: "
read str
v=$(echo $str | grep -o -i "[aeiou]" | wc -l)
echo "Total number of present in the entered string is $v"

