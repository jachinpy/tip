#!/bin/bash

sudo apt-get update

# conventional component
cat basic_backpacks.txt | xargs sudo apt-get install -y

# fix scrapy error,then sudo pip install Scrapy.
# fix IOError: decoder jpeg not available.
cat python_dev.txt | xargs sudo apt-get intall -y

# fix "error: command 'x86_64-linux-gnu-gcc' failed with exit status 1"
sudo apt-get build-dep -y python-lxml

# postgresql client and server.
# libpq-dev sloved: Error: pg_config executable not found.
sudo apt-get install -y postgresql-client postgresql libpd-dev

# Terminal themes and 256. result eg. $ tput colors $ 8
sudo apt-get install -y dconf-cli ncurses-term

sudo apt-get install -y zsh
sudo apt-get install pandoc ess
sudo apt-get install slime clisp gcl
ln -s /usr/bin/clisp ~/bin/lisp

$TEMP_APP=$HOME"/.oh-my-zsh"
if [ ! -x "$TEMP_APP" ]; then
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

# python packages.
sudo pip install -r requirements.txt -i http://pypi.douban.com/simple
sudo gem install tmuxinator
chsh -s /bin/zsh
echo $0
