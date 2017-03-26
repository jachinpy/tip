#!/bin/bash


# update source
sudo yum -y install epel-release
sudo yum install -y yum-axelget
sudo yum update
sudo yum -y install git

# python development.
sudo yum install -y python-pip
sudo yum install -y bzip2-devel bzip2-libs
sudo yum install -y readline readline-devel readline-static
sudo yum install -y python-devel zlib-devel openssl-devel mysql-devel

# http://zeromq.org/distro:centos
sudo yum install -y zeromq-devel zeromq  # if you need gfirefly.

# gcc
sudo yum install -y gcc gcc-c++         # C编译器
sudo yum install -y gcc-gfortran                # Fortran编译器
sudo yum install -y compat-gcc-44               # 兼容gcc 4.4
sudo yum install -y compat-gcc-44-c++           # 兼容gcc-c++ 4.4
sudo yum install -y compat-gcc-44-gfortran      # 兼容gcc-fortran 4.4
sudo yum install -y compat-libf2c-34            # g77 3.4.x兼容库
sudo yum install -y gdb                         # 代码调试器
sudo yum install -y cmake autoconf automake


# sudo yum install libreoffice     # liboffice 可选

# if you need this.
# sudo yum clean all
