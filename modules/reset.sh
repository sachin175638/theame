#!/bin/bash
cp /data/data/com.termux/files/home/theame/modules/bash.bashrc $HOME
cp /data/data/com.termux/files/home/theame/modules/motd $HOME
if [ -e /data/data/com.termux/files/usr/etc/bash.bashrc ]
then
	rm -rf /data/data/com.termux/files/usr/etc/bash.bashrc
fi
mv $HOME/bash.bashrc /data/data/com.termux/files/usr/etc
if [ -e /data/data/com.termux/files/usr/etc/motd ]
then
	rm -rf /data/data/com.termux/files/usr/etc/motd
fi
mv $HOME/motd /data/data/com.termux/files/usr/etc
killall com.termux

