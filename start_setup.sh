#!/bin/sh

apt-get update
sag () {
    sudo apt-get install "$*"
}

sag zsh git gitk git-flow kdiff3 tmux chromium-browser ibus-googlepinyin\
     gnome-tweak-tool ubuntu-tweak-tool libnotify-bin curl\
     silversearcher-ag byobu

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.zshrc ~/.zshrc.orig
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s /bin/zsh

cp tmux.conf ~/.tmux.conf
git clone https://github.com/purcell/emacs.d.git ~/.emacs.d
source ./python_develop_tool.sh

echo "==============Now, restart computer======================"
