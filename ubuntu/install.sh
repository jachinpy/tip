#!/bin/bash


sudo apt-get install -y openssh-server python-dev python-pip \
    libffi-dev libssl-dev libmysqlclient-dev liblcms2-dev \
	libjpeg62-dev zlib1g-dev libfreetype6-dev \
	libxml2-dev libxslt1-dev python-lxml 
if [ $? != 0 ]
then
echo "Error(1): Python header not install!"
exit 1
fi


sudo pip install --upgrade pip

