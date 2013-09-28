bashrc
======

A collection of bashrc files that I care about.

# Setup

Install and setup the bashrc files as follows:

    cd ~/
    git clone https://github.com/joshvillbrandt/bashrc.git
    mv .bashrc .bashrc_org
    ln -s bashrc/include .bashrc
    source .bashrc

You can then optionally include files by editing the bashrc/include file.
