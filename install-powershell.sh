#!/usr/bin/env bash
# Script by S.G.Johansson
# GPL License
# 
# DESCRIPTION:
# This script will simply install the latest (7.x in the moment of writing this)
# which will add some features.
# (Source: https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.2)
#
# HOW TO USE:
# Make sure you make this file executable by running the following command
# (obviously change filename to this file's name, feel free to rename it first):
#
#	 chmod +x filename
#
# Good Luck!



function instpowershell () {
	/mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe "winget install --id Microsoft.Powershell --source winget"
}

if [[ -f "/mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe" ]]
then
	printf "\nRunning powershell and executing the following command: \n"
	printf "winget install --id Microsoft.Powershell --source winget\n"
	
	sleep 3 && clear && instpowershell
else
	printf "\n Unable to run the powershell binary (at the default location)\n \
	Please write me on GitHub so I can add compatibility that works for you too. \n \
	Sorry! \n\t\t :( \n\n"
fi

