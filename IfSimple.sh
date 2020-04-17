#!/bin/bash
# Program:
#
# History:
# 2020/4/17	Yuanlong Xiao	First Release

echo "The script name is: $0"
echo "Total parameter number is: $# "
[ "$#" -lt 2 ] && echo "The number of parameter is less than 2. Stop here"\
	&& exit 0

echo "You whole parameter is: $@"
echo "1st parameter is: $1"
echo "2nd parameter is: $2"











