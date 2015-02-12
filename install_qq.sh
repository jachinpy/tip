#/bin/bash
sudo dpkg -i wine-qqintl_0.1.3-2_i386.deb
sudo apt-get install -f
sudo dpkg -l|grep qq
