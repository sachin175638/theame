#!/usr/bin/bash
chmod +x psw.py
if [ -d $HOME/pwd ]
then
	rm -rf $HOME/pwd
fi
mkdir $HOME/pwd
mv $HOME/pwd $HOME/.pwd
if [ -e $HOME/.pwd/psw.py ]
then
	rm $HOME/.pwd/psw.py
fi
mv psw.py $HOME/.pwd


cd /data/data/com.termux/files/usr/etc
echo "python2 $HOME/.pwd/psw.py" >> bash.bashrc
