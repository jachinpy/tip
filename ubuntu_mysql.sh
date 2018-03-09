#!/bin/bash


TEMP_OPTIONAL_PACKAGES="gnome-tweak-tool libnotify-bin
                         chromium-browser mysql-server mysql-client emacs w3m apache2-utils"
sudo apt-get install -y $TEMP_OPTIONAL_PACKAGES

TEMP_APP=$HOME"/.emacs.d"
if [ ! -x "$TEMP_APP" ];then
    git clone https://github.com/jachinpy/emacs.d.git ~/.emacs.d
fi

# Terminal plugins and optimize
if [ ! -x "$TEMP_APP" ];then
    git clone https://github.com/Anthony25/gnome-terminal-colors-solarized.git ~/gnome-terminal-colors-solarized
fi
