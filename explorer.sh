#!/usr/bin/env bash
# Script by S.G.Johansson
# GPL License
# 
# DESCRIPTION:
# With this script in your user $PATH you can simply
# use the command explorer.sh to launch an Explorer.exe
# instance.
#
# HOW TO USE:
# If no parameter is given Windows Explorer will simply
# open up in the directory you are currently in.
# 
# If you are in /mnt/c/ it will use the wslpath function
# and explorer will open in C:\
#
# If you give a path as parameter, for example:
# $ explorer.sh ~/bin/
# Windows Explorer will launch in your Linux user home directory
# bin/ folder (/home/user/bin)
#
# IMPORTANT NOTICE:
# Make sure you make this file executable by running the:
# chmod +x explorer.sh
# If you want it to work without typing the full path to
# where you're storing it, make sure it's stored in a directory
# included in your $PATH. 
#
# FOR BEGINNERS:
# I recommend creating a directory in your $HOME directory and
# include it in your $PATH by editing your .bashrc and adding:
# 
#	if [ -d ~/bin ]; then
#		export PATH=$PATH:~/bin
#	fi
#
# Good Luck!



winexplorer () { 
	/mnt/c/Windows/explorer.exe $@
}

echo $wslworkdir
echo $wsluserdir

if [[ ! $@ ]]; then
	declare -x wslworkdir=$( wslpath -w $( pwd ) )
	winexplorer $wslworkdir
else
	declare -x wsluserdir=$( wslpath -w $@ )
	winexplorer $wsluserdir
fi
