#!/bin/sh

apt-get update

sudo apt-get install zsh

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.zshrc ~/.zshrc.orig
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s /bin/zsh

sudo apt-get install git gitk git-flow kdiff3

echo "========================Mysql========================"
sudo apt-get install mysql-server mysql-client

echo "=================Next python develop===================="
sudo apt-get install python-pip ipython  python-virtualenv
sudo pip install virtualenvwrapper
echo source /usr/local/bin/virtualenvwrapper.sh >> ~/.zshrc
sudo apt-get install emacs24
sduo apt-get install global

echo "====================fix ubuntu python develop(no package)=================================="
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
cp tmux.conf ~/.tmux.conf
git clone https://github.com/purcell/emacs.d.git ~/.emacs.d

echo "=============================browser==========================="
sudo apt-get install chromium-browser

echo "=======================ubuntu gnome======================================"
sudo apt-get install gnome-tweak-tool ubuntu-tweak-tool
sudo apt-get install silversearcher-ag
sudo apt-get install libnotify-bin

notify-send "ubuntu python develop environment done. :)"

echo "==============Now, restart computer======================"
