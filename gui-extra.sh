#!/bin/bash

TEMP_APP=$HOME"/.emacs.d"
if [ ! -x "$TEMP_APP" ];then
    git clone https://github.com/jachinpy/emacs.d.git ~/.emacs.d
fi

TEMP_OPTIONAL_PACKAGES="gnome-tweak-tool libnotify-bin gnome-terminal-colors-solarize ibus-googlepinyin
                         chromium-browser mysql-server mysql-client"
sudo apt-get install -y $TEMP_OPTIONAL_PACKAGES

# Terminal plugins and optimize
if [ ! -x "$TEMP_APP" ];then
    git clone https://github.com/Anthony25/gnome-terminal-colors-solarized.git ~/gnome-terminal-colors-solarized
fi
