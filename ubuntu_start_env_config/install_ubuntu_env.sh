#!/bin/sh

apt-get update

sudo apt-get install zsh

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.zshrc ~/.zshrc.orig
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s /bin/zsh

sudo apt-get install git
sudo apt-get install gitk
sudo apt-get install git-flow
sudo apt-get install kdiff3

echo "========================Mysql========================"
sudo apt-get install mysql-server
sudo apt-get install mysql-client

echo "=================Next python develop===================="
sudo apt-get install python-pip
sudo apt-get install python-virtualenv
sudo pip install virtualenvwrapper
echo source /usr/local/bin/virtualenvwrapper.sh >> ~/.zshrc

sudo apt-get install emacs24
sudo apt-get install ipython

echo "====================FAQ=================================="
echo "for mysql install libmysqlclient-dev"
sudo apt-get install libmysqlclient-dev
sudo apt-get build-dep python-lxml
echo "answer IOError: decoder jpeg not available."
sudo apt-get install libjpeg8-dev zlib1g-dev libfreetype6-dev liblcms1-dev

cat zshrc.txt >> ~/.zshrc
echo "fix ~/.zshrc Ok!"

echo "=============================other======================================="
sudo apt-get install tmux
# ~/.zshrc plugin = (tmux) to be open.
git clone https://github.com/purcell/emacs.d.git ~/.emacs.d

echo "==============Now, restart computer======================"
