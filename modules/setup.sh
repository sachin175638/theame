#!/bin/bash
chmod +x logo.py
apt-get install python2 -y
if [ -e $HOME/.pwd/psw.py ]
then
        python2 $HOME/.pwd/psw.py
	rm -rf $HOME/.pwd
fi
clear
echo -n "Enter your name :- "
read name
if [ -e $HOME/file.txt ]
then
	rm $HOME/file.txt
fi
cd $HOME
touch file.txt
echo "command_not_found_handle() {" >> file.txt
echo '     /data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"'>> file.txt
echo "}" >> file.txt
echo "python2 /data/data/com.termux/files/home/theame/logo.py" >> file.txt
echo "PS1='\033[1;32m╔\033[1;32m\033[1;31m[root@$name]💰\033[1;31m">> file.txt
echo "\033[1;32m╚▶\033[1;32m \033[1;39m'" >> file.txt

if [ -e /data/data/com.termux/files/usr/etc/bash.bashrc ]
then
	rm /data/data/com.termux/files/usr/etc/bash.bashrc
fi
cd $HOME
mv file.txt /data/data/com.termux/files/usr/etc/bash.bashrc
if [ -e /data/data/com.termux/files/usr/etc/motd ]
then
	rm -rf /data/data/com.termux/files/usr/etc/motd
fi
killall com.termux
