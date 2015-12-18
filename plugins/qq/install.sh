#!/bin/bash
# =================================
# wget wine-qqintl_0.1.3-2_i386.deb
# =================================
sudo dpkg -i wine-qqintl_0.1.3-2_i386.deb
sudo apt-get install -f
sudo dpkg -l | grep qq

notify-send "ubuntu install wine-qqtl done. :)"
