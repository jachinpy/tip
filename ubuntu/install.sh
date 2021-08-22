#!/bin/bash


sudo apt update

# 安装中文输入法
sudo apt install -y fcitx

# ubuntu unix tools.
sudo apt install -y uidmap

# basic lib / tools.
sudo apt install -y libnotify-bin   # 消息通知

sudo apt install -y vim git curl silversearcher-ag

# ubuntu zsh.
./install_zsh_plugin.sh

# Linux python
./install_python.sh

# Mysql
./install_mysql.sh

# Postgres
#./install_postgres.sh

# tmux
./install_tmux.sh

# 扩展
#./extension_kits.sh

chsh -s /bin/zsh && echo $0
echo "重启电脑"

# 安装微信，QQ，WPS
#./install_wechat.sh
#./install_qq.sh
#./install_wps.sh

