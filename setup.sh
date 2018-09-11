#!/usr/bin/bash
if [ -d $HOME/theame ]
then
	echo ""
else
	echo "theame folder in not in HOME directory "
	echo "Moving theame folder to home directry"
	echo ""
	mv `pwd` $HOME
	cd $HOME/theame
	sh setup.sh
	exit

fi 
apt-get update
apt-get upgrade
apt-get install curl -y
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

