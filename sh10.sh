#!/bin/bash
# Program:
#
# History:
# 2020-04-17 11:24:22, ylxiao, First Release

echo "Now, I will detect our linux servers's services!"
echo -e "The www, fpt, ssh, and maill will be detect!"

testing=$(netstat -tuln | grep ":80")

if [ "$testing" != "" ]; then
  echo "WWW is running in your system."
fi

testing=$(netstat -tuln | grep ":22")

if [ "$testing" != "" ]; then
  echo "SSH is running in your system."
fi

testing=$(netstat -tuln | grep ":22")

if [ "$testing" != "" ]; then
  echo "FPT is running in your system."
fi

testing=$(netstat -tuln | grep ":631")

if [ "$testing" != "" ]; then
  echo "PRINTER is running in your system."
fi










