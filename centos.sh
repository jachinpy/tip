sudo yum -y install epel-release
sudo yum -y install python-pip git

sudo yum install yum-axelget
sudo yum update

wget http://dev.mysql.com/get/mysql-community-release-el7-5.noarch.rpm
sudo rpm -ivh mysql-community-release-el7-5.noarch.rpm
sudo yum install mysql-community-server

# gcc, gdb, kernel, python, and so on.
sudo yum install -y bzip2-devel bzip2-libs
sudo yum install -y readline readline-devel readline-static
sudo yum install -y python-devel zlib-devel openssl-devel mysql-devel


sudo yum -y install gcc gcc-c++         # C编译器
sudo yum install gcc-c++                 　  # C++编译器
sudo yum install gcc-gfortran                # Fortran编译器
sudo yum install compat-gcc-44               # 兼容gcc 4.4
sudo yum install compat-gcc-44-c++           # 兼容gcc-c++ 4.4
sudo yum install compat-gcc-44-gfortran      # 兼容gcc-fortran 4.4
sudo yum install compat-libf2c-34            # g77 3.4.x兼容库
sudo yum install gdb                         # 代码调试器
sudo yum install cmake autoconf automake


# sudo yum install libreoffice     # liboffice 可选

# if you need this.
# sudo yum clean all
