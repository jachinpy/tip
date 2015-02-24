#!/bin/sh


sudo apt-get install mysql-server mysql-client
sudo apt-get install python-pip ipython  python-virtualenv
sudo pip install virtualenvwrapper
echo source /usr/local/bin/virtualenvwrapper.sh >> ~/.zshrc
sudo apt-get install emacs24
sduo apt-get install global

sudo apt-get install libmysqlclient-dev
sudo apt-get build-dep python-lxml
echo "answer IOError: decoder jpeg not available."
sudo apt-get install libjpeg8-dev zlib1g-dev libfreetype6-dev liblcms1-dev

cat zshrc.txt >> ~/.zshrc
echo "fix ~/.zshrc Ok!"

notify-send "ubuntu python develop environment done. :)"
