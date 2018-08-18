#!/usr/bin/bash
apt-get update
apt-get upgrade
if [ -e /data/data/com.termux/files/usr/bin/python2.7 ]
then
	echo ""
	echo "Python2 already instslled"
	echo ""
else
	apt-get install python2
fi 
chmod +x *
cd modules
chmod +x *

