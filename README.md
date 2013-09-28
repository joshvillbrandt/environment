linux-tools
===========

Some favorite linux files to make a new machine feel like home.

# Setup

Install and setup the bashrc files as follows:

    cd ~/
    git clone https://github.com/joshvillbrandt/linux-tools.git
    mv .bashrc .bashrc_original
    ln -s linux-tools/bashrc/include .bashrc
    source .bashrc

You can then optionally include files by editing the bashrc/include file.

# set tty flags (ubuntu)

    sudo visudo
    #Defaults !tty_tickets
