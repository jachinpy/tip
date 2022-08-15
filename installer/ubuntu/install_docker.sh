#!/bin/bash

curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose


