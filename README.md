# Windows Subsystem for Linux shell scripts for day-to-day use
**wsl-scripts**

**Windows Subsystem for Linux script-collection (in progress)** \
**I designed these to make life easier working from a terminal, in Windows, from a bash terminal.**
\
These scripts are made for use in, foremost, a Debian WSL system. Any distribution derived from Debian (E.g Ubuntu) should work just as well.

Each script will contain a description, instructions and extra information that will be useful for users with little to no experience using Linux, or specifically, Linux-based shell terminals on a Windows system.

I make it a priority to ensure these scripts lack any features that can be damaging to less experienced users; in other words - feel free and safe to try 'em out, even if you don't really know what you're doing - thus if you find anything to the contrary, let me know so I can correct it.

**Enjoy**

- - - -

###  **explorer.sh**
With this script in your user $PATH you can simply use the command:

    $ explorer.sh 
    
or

    $ explorer.sh /mnt/c/Users
 
This will launch an instance (a Explorer window) at the working directory you are currently in, or, (if) a directory were supplied.

HOW TO USE: \
If no parameter is given Windows Explorer will simply open up in the directory you are currently in. 
If you are in /mnt/c/ it will use the wslpath function and explorer will open in C:\
If you give a path as parameter, for example:
   
    $ explorer.sh ~/bin/
   
Windows Explorer will launch in your Linux user home directory
bin/ folder (/home/user/bin)

IMPORTANT NOTICE: \
Make sure you make this file executable by running the:
     
    chmod +x explorer.sh
      
If you want it to work without typing the full path to
where you're storing it, make sure it's stored in a directory
included in your $PATH. 

FOR BEGINNERS: \
I recommend creating a directory in your $HOME directory and
include it in your $PATH by editing your .bashrc and adding:
 
    if [ -d ~/bin ]; then
        export PATH=$PATH:~/bin
    fi
