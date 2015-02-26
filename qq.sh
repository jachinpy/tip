#/bin/bash

wget http://lx.cdn.baidupcs.com/file/d0f3340da494a6b20c768b0bd51a999d?bkt=p2-nj-990&xcode=562bb5c7bc21b7be2d2382fbabe655f41403b15d41e13e3997b9a5605f7129c8&fid=202032639-250528-1106756925559310&time=1423752954&sign=FDTAXERLBH-DCb740ccc5511e5e8fedcff06b081203-S1HzXbF%2BLtkXAtOzltHKPE1HmC8%3D&to=cb&fm=Nan,B,G,ny&sta_dx=118&sta_cs=17&sta_ft=deb&sta_ct=4&newver=1&newfm=1&flow_ver=3&sl=72286287&expires=8h&rt=sh&r=868466745&mlogid=1011191884&vuk=338917314&vbdid=382044516&fin=wine-qqintl_0.1.3-2_i386.deb&fn=wine-qqintl_0.1.3-2_i386.deb

mv d0f3340da49* wine-qqintl_0.1.3-2_i386.deb
sudo dpkg -i wine-qqintl_0.1.3-2_i386.deb
sudo apt-get install -f
sudo dpkg -l|grep qq
rm -rf wine-qqintl_0.1.3-2_i386.deb

notify-send "ubuntu install wine-qqtl done. :)"
