#!/bin/bash

# mysql
if [ ! -f "mysql-community-release-el7-5.noarch.rpm" ];then
    wget http://dev.mysql.com/get/mysql-community-release-el7-5.noarch.rpm
fi

sudo rpm -ivh mysql-community-release-el7-5.noarch.rpm
sudo yum install -y mysql-community-server

