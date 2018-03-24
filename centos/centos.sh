#!/bin/bash


# update source
sudo yum -y install epel-release yum-axelget && sudo yum update

# python development.
sudo yum install -y git python-pip bzip2-devel bzip2-libs \
    readline readline-devel readline-static \
    python-devel zlib-devel openssl-devel mysql-devel \
    # http://zeromq.org/distro:centos
    zeromq-devel zeromq  # if you need gfirefly.

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
