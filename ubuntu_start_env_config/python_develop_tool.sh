#!/bin/sh


sudo apt-get install mysql-server mysql-client python-pip ipython\
python-virtualenv emacs24 libmysqlclient-dev build-dep python-lxml\

sudo pip install virtualenvwrapper
echo source /usr/local/bin/virtualenvwrapper.sh >> ~/.zshrc

sduo apt-get install global

echo "answer IOError: decoder jpeg not available."
sudo apt-get install libjpeg8-dev zlib1g-dev libfreetype6-dev liblcms1-dev

cat zshrc.txt >> ~/.zshrc
echo "fix ~/.zshrc Ok!"

notify-send "ubuntu python develop environment done. :)"
