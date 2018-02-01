#!/bin/bash
#due to access rights in debian
#to schedule this task, add or echo the below script to /etc/crontab
#PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
#"0 0 * * * 04.sh"
#Or do `echo "0 0 * * * $(pwd)/04.sh" >> /etc/crontab

SAVE="NEWMD"
NEWMD=`md5sum /etc/crontab | awk '{ print $1 }'`
read -r OLDMD<$SAVE
if [ "$OLDMD" != "$NEWMD5" ]
then
	echo "crontab has changed" | mail root
fi
echo "$NEWMD">NEWMD
