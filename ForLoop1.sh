#!/bin/bash
# Program:
#
# History:
# 2020-04-17 13:27:01, ylxiao, First Release

read -p "Please input a number, I will count for 1+2+3+...+<input_input>: " nu

s=0
for i in $(seq 1 $nu)
do
  s=$(($s+$i))
done

echo "The result of '1+2+3+...+$nu' is ==> $s"










