#!/bin/sh

apt-get update
sag () {
    sudo apt-get install "$*"
}

sag zsh git gitk git-flow kdiff3 tmux chromium-browser ibus-googlepinyin\
     gnome-tweak-tool ubuntu-tweak-tool libnotify-bin curl\
     silversearcher-ag byobu tree

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.zshrc ~/.zshrc.orig
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s /bin/zsh

cp ./plugins/tmux/tmux.conf ~/.tmux.conf
git clone https://github.com/purcell/emacs.d.git ~/.emacs.d
source ./plugins/python/python_develop_tool.sh

# Swap caps_lock and control_R, save after restart.
cp $HOME/.xprofile $HOME/.xprofile.orig
cp ./plugins/keymap/xprofile $HOME/.xprofile
cp ./plugins/keymap/Xmodmap $HOME/.Xmodmap
