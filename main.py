import time
import random
import os

def design():
	print("""
	Made by: XnetwolfX(github)
	Author : RadiationBolt
	Facebook: rad.taren
	Follow me on github for more tools
	Credits to: \033[1;92mAnonyminHack5\033[0m
	""")
def help():
	print("""
	
	To start you will need to define a lenght of word to generate 
	example1:
		lenght of words> [n1]
		When you put your input between [ ] that's mean it will only generate word of lenght number between [ ] 
	example2:
		lenght of words> (n2-n3)
		when you input is between ( ) that's mean it will only take two number the one before the - sign and the one after it will generate words between with lenght which is n2, between those two number and n3
		you can watch the demo
	""")
	#unlock later
#	f = open("logs.txt", "w")
#	r = time.localtime()
#	l = time.asctime(r)
#	f.write(l)
#	f.close()

design()
try:
	f = open("logs.txt", "r")
except FileNotFoundError:
	help()
	
def help_1():
	print("""
	
	To start you will need to define a lenght of word to generate 
	example1:
		lenght of words> [n1]
		When you put your input between [ ] that's mean it will only generate word of lenght number between [ ] 
	example2: # don't try it still in developement'
		lenght of words> (n2-n3)
		when you input is between ( ) that's mean it will only take two number the one before the - sign and the one after it will generate words between with lenght which is n2, between those two number and n3
		you can watch the demo
	""")
def generatewordwithbrack(lenght, savefile, letters):
	#generate with [n] 
	#n is a number given by user
	r = lenght[1]
	start = 1
	word = " "
	f = open(savefile, "w")
	r= int(r) + 1
	while start > 0:
		while len(word) < int(r):
				v = random.choice(letters)
				word = word + v
				while len(word) == int(r):
				      f.write(word +"\n")
				      word = " "
		
		
		
			
	
	
def generatewordwithparat(lenght, savefile, letters):
	#generate with (n-n1)
	# n is a number, n1 is a number
	print("hi generatewordwitgparar")

def exit():
	os.system("exit")
	exit

def main():
	lenght = input("lenght of words> ")
	savefile = input("saving of words> ")
	letters = ("qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM1234567890@*!#:;&_()-',.?+????=%/\$????????????????^[]<>~`??????\"??")
	if lenght[0] == "[":
		generatewordwithbrack(lenght, savefile, letters)
	elif lenght[0] == "(":
		generatewordwithparat(lenght, savefile, letters)
	else:
		print("Error please follow instruction or watch demo")

def option():
	var = input("""
	{1} start generating
	{2} upgrade tool
	{3} about author
	
	> """)
	if var == "3":
		os.system("clear")
		design()
	elif var == "2":
		os.system("clear")
		os.system("bash update.sh")
		exit()
		exit 
	elif var == "1":
		print("Tools start")
		os.system("clear")
		os.system("figlet -f small WORDLAP")
		main()
	else:
		print("\033[1;91mNOT PART OF THE OPTIONS DUDE..EXITING!!\033[0m")
		time.sleep(1)
		exit
				
help_1()
option()
