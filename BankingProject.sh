#!/bin/bash
clear  
users=()
 

declare -A account

 
 
welcomeScreen()
 
{
echo " "
 
echo "------------Welcome to the Online Test Bank-------------------"
echo " "
echo "     M A I N - M E N U"
 
echo "-------------------------------"
 
echo "1. Create new bank account"
 
echo "2. Login as User"
 
echo "3. Exit"
 
 
 
read -p "Enter your choice [ 1 - 3 ]: " choice
 
case $choice in
 
1) createAccount ;;
 
2) userLogin  ;;
 
3) echo "Thank You!!"
 
   exit 0 ;;
 
*)
 
echo "Error: Invalid option..."
 
      welcomeScreen ;;
 
esac
 
}
 
 
 
createAccount()
 
{
 echo "Open a New account"
echo "********************************Enter the Customer Details******************************************"
                        read -p "Enter the First Name: " firstName
                        read -p "Enter the Second Name: " secondName
                        read -p "Enter the PAN details: " panNumber
                        read -p "Enter the Address: " customerAddress
                        read -p "Enter the Opening account balance: " accountBalance
                       
                        
                        RANDOM=$$
                        #R=$(( $RANDOM % 10 + 1 ))
                        #R=shuf -i 55555-99999 -n 1
                        #number=$RANDOM$RANDOM$RANDOM;
                        #let "number %= 1000000000";
 AccountNumber=$( shuf -i 99999999999-999999999999 -n 1 )
                        echo "The Account number is $AccountNumber"
 echo "--------------Hello "$firstName", The Account has been created successfully!! and the account number is $AccountNumber--------------"
users+=$firstName
account["$AccountNumber"]=$accountBalance
 
 
read -p "Press [Enter] key to continue..." readEnterKey
 
welcomeScreen
 
}
 
 
 
userLogin()
 
{
echo " "
echo "********Customer Login****************"
echo " "
read -p "Enter the Customer First Name to login: " userName
read -p "Enter the Password: " password
 
 
if [[ " ${users[*]} " == *"$userName"* ]]
 
  then
 
      echo "Welcome $userName"
 
      echo "1. Display the account balance"
 
      echo "2. Put account balance in a file"
 
      echo "3. Logout"
 
 
 
read -p "Enter your choice [ 1 - 3 ] " option
 
case $option in
 
   1) read -p "Enter your Account Number: " accountNo
 
      for accNum in ${!account[@]}; do
 
      if [ $accountNo = ${accNum} ]
 
      then
 
      echo "Your account balance is: "${account[${accNum}]}
 
      else
 
         echo "Incorrect account number!!!Please check your account number"
 
 
 
      fi
 
  done
 
      read -p "Press [Enter] key to continue..." readEnterKey
 
      welcomeScreen ;;
 
 
 
   2) read -p "Enter your Account Number: " accountNo
 
      for accNum in ${!account[@]}; do
 
      if [ $accountNo = ${accNum} ]
 
      then
 
      echo "Your account balance is: "${account[${accNum}]}
 
      else
 
         echo "!!!Please check your account number"
 
      fi
 echo "Welcome $userName!! For you account number $accountNo, the balance is ${account[${accNum}]}" > statement_$accNum.txt
echo "Your statement is downloaded... and is available as statement_$accNum.txt"
 done
 
      read -p "Press [Enter] key to continue..." readEnterKey
 
     welcomeScreen ;;
 
 
   3) welcomeScreen ;;
 
   *) echo "Error: Invalid option..."
 
      welcomeScreen ;;
 
esac
 
  else
 
          echo "!!!User not found!!!"
 
          welcomeScreen
 
fi
 
}
 
welcomeScreen
