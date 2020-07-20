set -x ::
echo "Enter Num1"
read n1
echo "Enter Num2"
read n2
echo "Enter Num3"
read n3

if [ $n1 -gt $n2 ] && [ $n1 -gt $n3 ]
then
    echo "Greatest number is:" $n1
elif [ $n2 -gt $n1 ] && [ $n2 -gt $n3 ]
then
    echo "Greatest number is:" $n2
else
    echo "Greatest number is:" $n3
fi
