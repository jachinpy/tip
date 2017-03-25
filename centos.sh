sudo yum -y install epel-release
sudo yum -y install python-pip git

wget http://dev.mysql.com/get/mysql-community-release-el7-5.noarch.rpm
sudo rpm -ivh mysql-community-release-el7-5.noarch.rpm
sudo yum install mysql-community-server

# if you need this.
# sudo yum clean all
