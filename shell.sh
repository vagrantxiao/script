#!/bin/bash
[ "$#" != 1 ] && echo "You MUST enter a file name!" && exit
echo "#!/bin/bash" > $1
echo "# Program:" >> $1
echo "#" >> $1
echo "# History:" >> $1
echo "# "$(date "+%Y-%m-%d %H:%M:%S")", $USERNAME, First Release" >> $1
echo "" >> $1
echo "" >> $1
echo "" >> $1
echo "" >> $1
echo "" >> $1
echo "" >> $1
echo "" >> $1
echo "" >> $1
echo "" >> $1
echo "" >> $1
echo "" >> $1
chmod +x $1
