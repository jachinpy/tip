#!/bin/bash

# conventional component
cat basic_backpacks.txt | xargs sudo apt-get install -y
if [ $? != 0 ]
then
echo "Error: basic_backpacks.txt not install!"
exit 1
fi

# fix scrapy error,then sudo pip install Scrapy.
# fix IOError: decoder jpeg not available.
cat python_dev.txt | xargs sudo apt-get install -y
if [ $? != 0 ]
then
echo "Error: python_dev.txt not install!"
exit 1
fi

# fix "error: command 'x86_64-linux-gnu-gcc' failed with exit status 1"
sudo apt-get install -y libxml2-dev libxslt1-dev python-lxml
if [ $? != 0 ]
then
echo "Error: x86_64_gnu_gcc not fix!"
exit 1
fi

# postgresql client and server.
# libpq-dev sloved: Error: pg_config executable not found.
sudo apt-get install -y postgresql-client postgresql libpq-dev
if [ $? != 0 ]
then
echo "Error: postgres pg_config not fix!"
exit 1
fi

# Terminal themes and 256. result eg. $ tput colors $ 8
sudo apt-get install -y dconf-cli ncurses-term

sudo apt-get install pandoc ess
sudo apt-get install slime clisp gcl
ln -s /usr/bin/clisp ~/bin/lisp

$TEMP_APP=$HOME"/.oh-my-zsh"
if [ ! -x "$TEMP_APP" ]; then
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

# python packages.
sudo pip install -r requirements.txt -i http://pypi.douban.com/simple --trusted-host pypi.douban.com

# gem doctor
if [ -x "`which gem`"]
then
sudo apt-get install -y ruby gem
sudo gem sources --remove https://rubygems.org
sudo gem sources --remove http://rubygems.org
sudo gem sources --add https://gems.ruby-china.org/
gem sources -l
sudo gem install tmuxinator
fi

# install extensions
cat extension_packages.txt | xargs sudo apt-get install -y

