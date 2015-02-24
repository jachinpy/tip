#!/bin/sh

apt-get update
sudo apt-get install zsh

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.zshrc ~/.zshrc.orig
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s /bin/zsh

sudo apt-get install git gitk git-flow kdiff3

sudo apt-get install tmux
# ~/.zshrc plugin = (tmux) to be open.
cp tmux.conf ~/.tmux.conf
git clone https://github.com/purcell/emacs.d.git ~/.emacs.d

sudo apt-get install chromium-browser
sudo apt-get install ibus-googlepinyin

sudo apt-get install gnome-tweak-tool ubuntu-tweak-tool libnotify-bin
sudo apt-get install curl
sudo apt-get install silversearcher-ag

echo "==============Now, restart computer======================"
