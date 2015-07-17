#!/bin/bash

# backup zshrc and product .zshrc
temp_app_file=$HOME"/.zshrc"
if [ ! -x "$temp_app_file" ];then
    cp plugins/zsh/zshrc  ~/.zhsrc
else
    cp ~/.zshrc ~/.zshrc.orig
fi

# session plugins
cp ./plugins/tmux/tmux.conf ~/.tmux.conf
cp ./keybindings.tmux  ~/.byobu/keybindings.tmux
chsh -s /bin/zsh
