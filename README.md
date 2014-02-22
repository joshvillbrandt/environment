# linux-tools

Make a new machine feel like home.

## Setup

Install and setup the bashrc files as follows:

```bash
cd ~/
git clone https://github.com/joshvillbrandt/linux-tools.git
mv .bashrc .bashrc_original
ln -s linux-tools/bashrc/main .bashrc
source .bashrc
```

## Optional

```bash
# set tty flags (ubuntu)
sudo visudo
#Defaults !tty_tickets
```
