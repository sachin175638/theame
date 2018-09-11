#!/usr/bin/python2
import os
from getpass import getpass

def pss(): 
 x = raw_input("Enter username   :- ")
 y = getpass('Enter password   :- ')
 z = getpass('re-type password :- ')
 x1 ='"'+x+'"\n'
 y1 ='"'+z+'"\n' 
 #print x1
 if y != z:
	print ''
	print "password is not matching "
	print ''
	os.system("python2 password.py")
 os.system("rm -rf psw.py")
 file = open("psw.py", "w")
 file.write("import os \n")
 file.write("from getpass import getpass \n")
 file.write("x ="+x1 )
 #file.write("y =" )
 file.write("z ="+y1 )
 file.write("while 1: \n")
 file.write("    try: \n")
 file.write("     sac = raw_input('Enter username :- ') \n")
 file.write("     san = getpass('Enter password :- ') \n")
 file.write("     if sac != x: \n")
 file.write("         print '' \n")
 file.write("         print 'Invalid username' \n")
 file.write("         print '' \n")
 file.write("     elif san != z: \n")
 file.write("         print '' \n")
 file.write("         print 'Ivalid password' \n")
 file.write('         os.system("sleep 1") \n')
 file.write('         os.system("killall com.termux") \n')
 file.write("     elif san == z: \n")
 file.write('         os.system("clear") \n')
 file.write("         break \n")
 file.write("    except KeyboardInterrupt: \n")
 file.write('         os.system("killall com.termux")')
 file.close()
 os.system("sh psw.sh")

pss()
