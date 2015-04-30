#!/bin/bash

apt-get update
sag() { sudo apt-get install "$*" }

sag zsh git gitk git-flow kdiff3 tmux chromium-browser ibus-googlepinyin\
     gnome-tweak-tool ubuntu-tweak-tool libnotify-bin curl\
     silversearcher-ag byobu tree

# Sloved scrapy error,then sudo pip install Scrapy.
sag python-dev libffi-dev libssl-dev libxml2-dev libxslt1-dev

# Sloved mysql-python.
sag mysql-server mysql-client python-pip ipython　python-virtualenv
emacs24 libmysqlclient-dev build-dep python-lxml　global

# Solved IOError: decoder jpeg not available.
sag libjpeg8-dev zlib1g-dev libfreetype6-dev liblcms1-dev

# Terminal themes
sag dconf-cli
git clone https://github.com/Anthony25/gnome-terminal-colors-solarized.git

# Terminal plugins and optimize
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.zshrc ~/.zshrc.orig
cp plugins/zsh/zshrc  ~/.zhsrc
chsh -s /bin/zsh

# python packages.
sudo pip install virtualenvwrapper percol rash

# session plugins
cp ./plugins/tmux/tmux.conf ~/.tmux.conf
cp ./keybindings.tmux  ~/.byobu/keybindings.tmux
sudo gem install tmuxinator

# emacs config
git clone https://github.com/jachinpy/emacs.d.git ~/.emacs.d

# Swap caps_lock and control_R, save after restart.
cp ./plugins/keymap/Xmodmap $HOME/.Xmodmap
cp $HOME/.xprofile $HOME/.xprofile.orig
cp ./plugins/keymap/xprofile $HOME/.xprofile
