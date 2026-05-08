#!/usr/bin/env bash
# HELLO THIS IS THE SETUP FILE OF THIS UTILL
# YOU CAN EITHER RUN THIS OR JUST FOLLOW THE INSTRUCTIONS BELOW	
# PREREQUISITES:
# ~/.bashrc file
# ~/.bash_aliases file
#  .bash_aliases must be sourced in .bashrc
# STEP 1: THIS TRIES TO CREATE A .aadi_aliases FILE IN ~/ IF NOT ALREADY EXIST
# STEP 2: THIS CHECKS YOUR .bashrc FILE IN ~/ DIRECTORY AND APPENDS ./aadi_aliases IF NOT APPENDED
# STEP 3: DONE YAYYYYYYYY
# YOU CAN DO THESE STEPS YOURSELVES IF YOU DONT WANT TO RUN THE SUS AHH SCRIPT
ERRRED="\033[1;31m"
ENDL="\033[0m"

if  [[ ! -e $HOME/.bash_aliases  ]]; then
	echo -e "${ERRRED}ERROR! .bash_aliases file doesnt exist!\nPlease create a .bash_aliases file in your home directory and add \". ~/.bash_aliases\" in your ~/.bashrc file"
	exit 1
fi
touch ~/.aadi_aliases

[[ $? != 0 ]] && exit 1

testvar=$(grep "\.aadi_aliases$" $HOME/.bash_aliases)
if [[ -z $testvar ]]; then
	echo . $HOME/.aadi_aliases >> $HOME/.bash_aliases
fi
sudo cp -r ./aadisctools /usr/local/bin
[[ $? != 0 ]] && exit 1

sudo mv /usr/local/bin/aadisctools/aadisc /usr/local/bin/
exit $? 
