#!/bin/bash

sudo apt install -y tmux

# 会话session
# gem doctor
if [ -x "`which gem`" ]
then
sudo apt-get install -y ruby gem
sudo gem sources --remove https://rubygems.org
sudo gem sources --remove http://rubygems.org
sudo gem sources --add https://gems.ruby-china.org/
gem sources -l
sudo gem install tmuxinator
fi

