#!/bin/sh


sag mysql-server mysql-client python-pip ipython\
python-virtualenv emacs24 libmysqlclient-dev build-dep python-lxml\

sudo pip install virtualenvwrapper
echo source /usr/local/bin/virtualenvwrapper.sh >> ~/.zshrc

sag global

echo "answer IOError: decoder jpeg not available."
sag libjpeg8-dev zlib1g-dev libfreetype6-dev liblcms1-dev

cat zshrc.txt >> ~/.zshrc
echo "fix ~/.zshrc Ok!"

source gositepackages.sh

notify-send "ubuntu python develop environment done. :)"
