#!/bin/bash
# set an infinite loop
while :
do
clear
        # display menu
        echo "Device Name - $(hostname)"
		echo ""
echo "-------------------------------"
echo "     M A I N - M E N U"
echo "-------------------------------"
echo "1. Display date and time."
echo "2. Display what users are doing."
echo "3. Exit"
echo ""
        # get input from the user 
read -p "Enter your choice [ 1 -3 ]: " choice
        # make decision using case..in..esac 
case $choice in
1)
echo "Today is $(date)"
read -p "Press [Enter] key to continue..." readEnterKey
;;
2) 
echo "Current user is $(whoami)"
read -p "Press [Enter] key to continue..." readEnterKey
;;
3)
echo "Bye!"
exit 0
;;
*)
echo "Error: Invalid option..." 
read -p "Press [Enter] key to continue..." readEnterKey
;;
esac 

done


