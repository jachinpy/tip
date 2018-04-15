@echo 自定义文件目录
title: 非静默安装

@echo install browser
start /wait 63.0.3239.132_chrome_installer.exe /s
start /wait FirefoxSetup59.0.2-32-59.0.2.6656.exe /s

@echo install tencent 
start /wait QQ9.0.2.exe 
start /wait WeChatSetup.exe
start /wait WeiyunInstall_3.7.0.2048.exe
start /wait qqpcmgr_12.8.19072.214_1328_0.exe

@echo install sogou pinyin
start /wait sogou_pinyin_89c.exe


@echo install other
start /wait KKSetup.exe
start /wait HuyaClientInstall.exe 
start /wait BaiduNetdisk_6.0.2.exe
:: start /wait
