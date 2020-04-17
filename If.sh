#!/bin/bash
# Program:
#
# History:
# 2020-04-17 11:32:04, ylxiao, First Release

echo "This pring how many work time you have today!"
read -p "Please input your demobilization date (YYYYMMDD ex>20080401): " date2

date_d=$(echo $date2 | grep '[0-9]\{8\}')
if [ "$date_d" == "" ]; then
  echo "You input the wrong date format...."
  exit 1
fi


declare -i date_dem=`date --date="$date2" +%s`
declare -i date_now=`date  +%s`
declare -i date_total_s=$(($date_dem-$date_now))
declare -i date_d=$(($date_total_s/24/60/60))

if [ "$date_total_s" -lt "0" ]; then
  echo "You had been demobilization before: " $(-1*$date_d) " ago"
else
  declare -i date_h=$(($(($date_total_s-$date_d*60*60*24))/60/60))
  echo "You will demobilize after $date_d days and $date_h hours."
fi









