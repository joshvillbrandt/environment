# download and run this file with wget

# set up bashrc
cd ~/
git clone https://github.com/joshvillbrandt/linux-tools.git
mv .bashrc .bashrc_original
ln -s linux-tools/bashrc/main .bashrc
ln -s .bashrc .bash_profile # for mac
source .bashrc
