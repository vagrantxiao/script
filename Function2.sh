#!/bin/bash
# Program:
#
# History:
# 2020-04-17 12:47:56, ylxiao, First Release

function printit(){
  echo -n "Your choice is "; echo $1 | tr 'a-z' 'A-Z'
}


echo "This program will print your selection !"
read -p "Input your choice: " choice

case $choice in 
  "one")
    printit $choice
  ;;
  "two")
    printit $choice
  ;;
  "three")
    printit $choice
  ;;
  *)
    echo "Usage $0 {one|two|three}"
  ;;

esac









