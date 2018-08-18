#!/usr/bin/bash
if [ -e /data/data/com.termux/files/usr/bin/off ]
then
	rm -rf /data/data/com.termux/files/usr/bin/off
fi

if [ -e $HOME/.off.sh ]
then
	rm $HOME/.off.sh
fi
cd $HOME
touch .off.sh
echo "killall com.termux" >> .off.sh
chmod +x .off.sh
ln -s $HOME/.off.sh /data/data/com.termux/files/usr/bin/off
 
#echo "Finish"

if [ -e /data/data/com.termux/files/usr/bin/ts ]
then
	rm /data/data/com.termux/files/usr/bin/ts
fi

if [ -e $HOME/.ts.sh ]
then
	rm $HOME/.ts.sh
fi
cd $HOME
touch .ts.sh
chmod +x .ts.sh
echo "echo 'Description          Options'" >> .ts.sh
echo "echo ''" >>.ts.sh
echo "echo 'Close all sessions   off'" >> .ts.sh
#echo "echo 'update & upgrade     tupdate '">>.ts.sh
ln -s $HOME/.ts.sh /data/data/com.termux/files/usr/bin/ts

echo ''
echo ''
echo 'Type ts for help'


