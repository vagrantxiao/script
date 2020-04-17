#!/bin/bash
# Program:
#
# History:
# 2020/4/17	Yuanlong Xiao	First Release

echo -e "Please input a file name"
read -p "Input a file name: " filename
test -z $filename && echo "You MUST input a filename." && exit 0
test ! -e $filename && echo "The filename '$filename' DO NOT exist" && exit 0
test -f $filename && filetype="regular file"
test -d $filename && filetype="directory"
test -r $filename && perm="${perm} readable"
test -w $filename && perm="${perm} writable"
test -x $filename && perm="${perm} executable"

echo "The filename: $filename is a $filetype"
echo "And the permissions are: $perm"









