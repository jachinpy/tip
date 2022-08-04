#!/bin/bash


sudo apt-get install -y python-dev make \
    libffi-dev libssl-dev libmysqlclient-dev liblcms2-dev \
    libjpeg62-dev zlib1g-dev libfreetype6-dev \
    libxml2-dev libxslt1-dev python-lxml \
    build-essential libbz2-dev libreadline-dev libsqlite3-dev llvm \
    libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev python3-pip

if [ $? != 0 ]
then
echo "Error(1): Python header not install!"
exit 1
fi


sudo pip install --upgrade pip
sudo pip install -r requirements.txt -i http://pypi.douban.com/simple --trusted-host pypi.douban.com
echo "Python 本机环境安装包 完成!"


