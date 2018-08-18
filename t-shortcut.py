#!/usr/bin/env python2
#
import os
import sys

def banner():
	ban = '''
               \033[1;32m .::TERMUX SHORTCUT & THEME::.
               .::::code name :- python2  ::::. 
               ||      coded by sachin       ||
                ------------------------------\033[1;32m

 
              \033[1;39m  TYPE -h for Help
 '''
#        os.system("clear")
        print ban
def clr():
	os.system("clear")
def logos():
	logo = '''
 Description              Options

 help			   -h
 setup theme               set theme
 setup shortcuts           set ts
 setup password            set password
 [remove password          reset
    and theme]
 clear screen              clear
 exit                      exit/quit
 '''
 	print logo
def com():
	logos = '''
 Description              Options
 
 close all sessions         off

 '''
banner()
def main():
 while 1:
	x = raw_input("\033[1;31mtermux \033[1;32m>>\033[1;39m ")
	if x == "-h":
		logos()
	elif x == "exit":
		break
	elif x == "quit":
		break
	elif x == "clear":
		clr()
	elif x == "set theme":
		os.system("sh modules/setup.sh")
	elif x == "set ts":
		os.system("sh modules/ts.sh")
	elif x == "set password":
		os.system("python2 modules/password.py")
	elif x == "reset":
		os.system("sh modules/reset.sh")
	else:
		print ''
		print "[x] command not found"
		print "type -h for help"
		print ''
main()
