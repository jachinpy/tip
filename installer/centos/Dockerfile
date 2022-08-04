From daocloud.io/centos:7

MAINTAINER jachinpy

RUN yum -y install epel-release yum-axelget && \
    yum update -y && \     
    yum install -y python-pip which git \
		bzip2-devel bzip2-libs readline readline-devel readline-static \     
		python-devel zlib-devel openssl-devel mysql-devel gcc gcc-c++ && \
    pip install --upgrade pip -i http://pypi.douban.com/simple --trusted-host pypi.douban.com && \
    pip install virtualenvwrapper ipython==5 flake8 -i http://pypi.douban.com/simple --trusted-host pypi.douban.com && \
    find / -name "*.py[co]" | xargs rm -rf && \
    mkdir /data && mkdir $HOME/.virtualenvs && \
	echo 'source /usr/bin/virtualenvwrapper.sh' >> $HOME/.bashrc && \
    echo 'source /usr/bin/virtualenvwrapper_lazy.sh' >> $HOME/.bashrc

ENV WORKON_HOME $HOME/.virtualenvs
ENV VIRTUALENVWRAPPER_PYTHON /usr/bin/python2.7

VOLUME /data

EXPOSE 80