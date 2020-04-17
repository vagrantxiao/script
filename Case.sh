#!/bin/bash
# Program:
#
# History:
# 2020-04-17 12:47:56, ylxiao, First Release

echo "This program will print your selection !"
read -p "Input your choice: " choice

case $choice in 
  "one")
    echo "you choice is ONE"
  ;;
  "two")
    echo "you choice is TWO"
  ;;
  "three")
    echo "You choice is THREE"
  ;;
  *)
    echo "Usage $0 {one|two|three}"
  ;;

esac









