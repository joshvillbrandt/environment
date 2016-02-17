# download and run this file with wget
set -e

# install pre-reqs (ubuntu)
sudo apt-get update
sudo apt-get install zsh git-core wget

# install oh-my-zsh
if [ ! -d "~/.oh-my-zsh" ]; then
  echo "\033[0;34mInstalling Oh My Zsh...\033[0m"
  sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
fi

# install environment
if [ ! -n "$ENV_DIR" ]; then
  ENV_DIR=~/.environment
fi
if [ -d "$ENV_DIR" ]; then
  echo "\033[0;33mYou already have environment installed.\033[0m You'll need to remove $ENV_DIR if you want to install"
  exit
fi
echo "\033[0;34mCloning environment...\033[0m"
hash git >/dev/null 2>&1 && /usr/bin/env git clone https://github.com/joshvillbrandt/environment.git $ENV_DIR || {
  echo "git not installed"
  exit
}

# add custom aliases, etc
echo "source ~/.environment/shell/main" >> ~/.zshrc
source ~/.zshrc

# sublime 3 user prefs (ubuntu)
rm ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
ln -s ~/.environment/sublime3/prefs ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings

# scm_breeze
git clone git://github.com/ndbroadbent/scm_breeze.git ~/.scm_breeze
~/.scm_breeze/install.sh
source ~/.zshrc   # or source ~/.bashrc
