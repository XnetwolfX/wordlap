#/bin/bash
#Credits to AnonyminHack5
#Author: Rad Taren

echo -e "\e[1;34mSetting up and making environment ready...wait..\e[0m"
sleep 1
clear
trap 'printf "\n";stop;exit 1' 2

dependencies() {
	command -v python > /dev/null 2>&1 || { echo >&2 "python is required to run this program. But its not installed. Install it using pkg install python or sudo apt install python. ABorting.."; exit 1; }
	command -v lolcat > /dev/null 2>&1 || { echo >&2 "lolcat is required to run this program. But its not installed. Install it using pip install lolcat or sudo pip install lolcat. ABorting.."; exit 1; }
	command -v python > /dev/null 2>&1 || { echo >&2 "figlet is required to run this program. But its not installed. Install it using pkg install figlet or sudo apt install figlet. ABorting.."; exit 1; }
}


banner() {
	figlet -f small UPDATE WORDLAP | lolcat
	echo ""
	echo "Created by Rad Taren and Credits to AnonyminHack5"
	echo ""
}

menu() {
printf "\e[1;93mProceed to update?\e[0m\n"
printf "\e[1;34m[01] Yes \e[0m\n"
printf "\e[1;34m[02] No \e[0m\n"
printf "\e[1;34m[03] Exit update\e[0m\n"
read -p$'\n\e[1;92mHey there, Kindly Choose your option: \e[0m\en' choose

if [[ $choose == 1 || $choose == 01 ]]; then
sleep 0.5
printf "\e[1;93mYou have choosen to update the script, Kindly wait as script will start to update....\e[0m\n"
sleep 0.5
cd $HOME 
rm -rf wordlap || sudo rm -rf wordlap
git clone https://github.com/XnetwolfX/wordlap
cd wordlap
chmod 777 *
sleep 0.5
printf "\e[1;34m[+]\e[0m\e[1;33mWordlap has been fully updated to its latest and rolling version, Thanks for standing by and thanks for using Wordlap.\e[0m\e[1;34m[!]\e[0m\n"
sleep 0.5
echo ""
printf "\e[1;92m[!]\e[0m\e[1;93mNow type \e[0m\e[1;36mpython main.py\e[0m\e[1;93mto start wordlap!!.\e[0m\e[1;92m[!]\e[0m\n"

elif [[ $choose == 2 || $choose == 02 ]]; then
echo -e "\e[1;91m Kindly note that it is recommended to update wordlap for better features and more bugs fixed in it. But you have choosen to be Stubborn\e[0m\n"
sleep 0.5
echo -e "\e[1;32mplease leave this program!!..\e[0m"
sleep 1
printf "\e[1;92m[\e[0m\e[1;77m!\e[0m\e[1;92m]\e[0m\e[1;93m WORDLAP NOT UPDATED!!!!.....UPDATE IT\e[0m\n"
sleep 0.5
exit 1

elif [[ $choose == 3 || $choose == 03 ]]; then
echo -e "\e[1;91m WORDLAP NOT UPDATED....PROGRAM WILL EXIT NOW!..\e[0m\n"
sleep 0.2
exit 1

else
printf "\e[1;33m[!]\e[0m\e[1;93mNot part of the options dude!!.\e[0m\e[1;33m[!]\e[0m\n"
clear
menu
fi
}
banner
dependencies
menu


















