@echo  安装软件开发工具环境
title: 静默安装

cd ./dev_tools

@echo install kits
start /wait 7z1604-x64.exe /s
start /wait VSCodeSetup-x64-1.22.1.exe /s
start /wait Everything-1.4.1.895.x64-Setup.exe /S /D=D:\Program Files\Everything
start /wait Win64OpenSSL_Light-1_1_0h.exe /s
start /wait FileZilla_3.31.0_win64-setup_bundled.exe /s
start /wait DockerToolbox-18.01.0-ce.exe /s
start /wait Xshell-5.0.1339.exe /s
start /wait VirtualBox-5.2.8-121009-Win.exe /s

@echo project directory
mkdir E:\data
mkdir E:\data\vagrant_dev
mkdir E:\data\vagrant_test
start /wait vagrant_2.0.3_x86_64.msi /s /v "/qb"

cd ..
@echo finished!