#!/bin/bash

 

while getopts 'rgy:' c;
do
  case "$c" in
    r) echo "Red colour button is pressed" ;;
    g) echo "Green colour button is pressed" ;;
    y)
avalue="$OPTARG"
echo "Yellow colour button is pressed and the value provided is $OPTARG"
;;
   *)
echo "script usage is wrong"

 

exit 1
;;
  esac
