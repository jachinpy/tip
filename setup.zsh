#!/bin/bash

sudo apt-get update

LIST_OF_APP="zsh git gitk git-flow kdiff3 tmux chromium-browser ibus-googlepinyin
     gnome-tweak-tool libnotify-bin curl silversearcher-ag byobu tree ruby gem"
sudo apt-get install -y $LIST_OF_APP

# Sloved scrapy error,then sudo pip install Scrapy.
SCRAPY_DEPENCE="python-dev libffi-dev libssl-dev libxml2-dev libxslt1-dev"
sudo apt-get intall -y $SCRAPY_DEPENCE

# Sloved mysql-python.
MYSQL_PYTHON_DEPENCE="mysql-server mysql-client python-pip ipython　python-virtualenv
 libmysqlclient-dev build-dep python-lxml　global"
sudo apt-get install -y $MYSQL_PYTHON_DEPENCE

# Solved IOError: decoder jpeg not available.
JPEG_DEPENCE="libjpeg8-dev zlib1g-dev libfreetype6-dev liblcms1-dev"
sudo apt-get install -y $JPEG_DEPENCE

# Terminal themes and 256. result eg. $ tput colors $ 8
THEME_DEPENCE="dconf-cli ncurses-term"
sudo apt-get install -y $THEME_DEPENCE

sudo apt-get install pandoc ess
sudo apt-get install slime clisp gcl
ln -s /usr/bin/clisp ~/bin/lisp

# Terminal plugins and optimize
$TEMP_APP=$HOME"/gnome-terminal-colors-solarizedgnome-terminal-colors-solarize"
if [ ! -x "$TEMP_APP" ];then
    git clone https://github.com/Anthony25/gnome-terminal-colors-solarized.git ~/gnome-terminal-colors-solarized
fi

$TEMP_APP=$HOME"/.oh-my-zsh"
if [ ! -x "$TEMP_APP" ]; then
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

$TEMP_APP=$HOME"/.emacs.d"
if [ ! -x "$TEMP_APP" ];then
    git clone https://github.com/jachinpy/emacs.d.git ~/.emacs.d
fi


# python packages.
sudo pip install virtualenvwrapper percol rash
sudo gem install tmuxinator
