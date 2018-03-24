#!/bin/bash

sudo apt-get install git

# conventional component
# fix scrapy error,then sudo pip install Scrapy.
# fix IOError: decoder jpeg not available.
sudo apt-get install -y openssh-server python-dev python-pip \
    libffi-dev libssl-dev libmysqlclient-dev \ 
    libjpeg62-dev zlib1g-dev libfreetype6-dev liblcms2-dev
if [ $? != 0 ]
then
echo "Error: Python Dev not install!"
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

sudo pip install --upgrade pip

sudo apt-get install pandoc ess
sudo apt-get install slime clisp gcl
ln -s /usr/bin/clisp ~/bin/lisp



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

