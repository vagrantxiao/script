#!/bin/bash
# Program:
#
# History:
# 2020-04-17 12:47:56, ylxiao, First Release

function printit(){
  echo -n "Your choice is "
}


echo "This program will print your selection !"
read -p "Input your choice: " choice

case $choice in 
  "one")
    printit; echo $choice | tr 'a-z' 'A-Z'
  ;;
  "two")
    printit; echo $choice | tr 'a-z' 'A-Z'
  ;;
  "three")
    printit; echo $choice | tr 'a-z' 'A-Z'
  ;;
  *)
    echo "Usage $0 {one|two|three}"
  ;;

esac









