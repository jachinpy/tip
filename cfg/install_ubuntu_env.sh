#!/bin/sh

echo 'First System Update'
apt-get update
echo 'Update Ok!'

echo "install ZSH."
sudo apt-get install zsh
echo "completed!"

echo "install oh-my-zsh. if install it, don't use clone git-flow-complete."
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.zshrc ~/.zshrc.orig
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s /bin/zsh
echo "update bash to zsh!"

echo "install GIT"
sudo apt-get install git
echo "completed!"
echo "install GITK"
sudo apt-get install gitk
echo "completed!"
echo "install GIT-FLOW"
sudo apt-get install git-flow
echo "completed!"
echo "install GIT-KDIFF3"
sudo apt-get install kdiff3
echo "completed!"

echo "========================Mysql========================"
sudo apt-get install mysql-server
sudo apt-get install mysql-client
echo "complete!"

echo "=================Next python develop===================="
echo "install PIP"
sudo apt-get install python-pip
echo "completed!"


echo "install Virtualenv"
pip install virtualenv
sudo pip install virtualenvwrapper
echo source /usr/local/bin/virtualenvwrapper.sh >> ~/.zshrc
echo "virtualenv completed!"

echo "for editor. start emacs >>"
sudo apt-get install emacs24
echo "completed!"

echo "install ipython"
sudo apt-get install ipython
echo "complete!"

echo "====================FAQ=================================="
echo "for mysql install libmysqlclient-dev"
sudo apt-get install libmysqlclient-dev
echo "completed!"
echo "mysql lxml"
sudo apt-get build-dep python-lxml
echo "complete!"
echo "answer IOError: decoder jpeg not available."
sudo apt-get install libjpeg8-dev zlib1g-dev libfreetype6-dev liblcms1-dev
echo "complete!"

echo "add mozilla for firefox."
cat hosts.txt >> /etc/hosts
echo "complete!"

echo "add script for .zshrc"
cat zshrc.txt >> ~/.zshrc
echo "fix ~/.zshrc Ok!"

echo "==============Now, restart computer======================"
