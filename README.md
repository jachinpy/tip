Tip
========

ubuntu 12.04 or 14.04


## Goal

 - initial ubuntu
 - add develoop tool
 - add utils tool
 - more feature


## First Step
    sudo apt-get install git
    git clone https://github.com/jachinpy/tip.git
    为系统安装包
    ./base-packages.sh (if no permission, chmod a+x *.sh)
    为系统添加组件
    vim ~/.zshrc
    source ~/path/tip/engine.sh

## Feature
  
 + python utils
	goto python2.7 site-packages for projects. use sitep command in shell.
        
        sitep [virutalenv name]
            if you in virutalenv. You can use it by itself directly.

 + swap keyboard
 
        (仅供参考, 需要手动切换到 develop 分支, 暂不更新)
        
        git checkout devlop
 
        ibus 输入法框架不可以删除，ubuntu组件依赖。在此基础上
        运行 gnome-tweak-tool 方法较好。
        Fcitx 输入法框架，需要使用 .Xmodmap 文件交换按键，并
        将指令装入 .xprofile 中，以便开机执行。
        .xkb 方法不适用于 fcitx 和 ibus 框架。

 + other plugins
    	linux qq.
	    .plugins/qq/qq.zsh

 + init system
 
        zsh, oh-my-zsh, pip, virtualenv, virtualenvwrapper,...


## File struct

 + engine.zsh
	用来启动组件的核心。
 + base-packages.sh
	用来初始化和更新系统安装包的组件，用于第一次或独立运行安装包。
 + migrate.zsh
	用来备份迁移配置文件, eg:

		备份数据:
		source migrate.zsh
		backup_home /mnt/home_backup.tar.gz ~/project/tip/whatsbackup.txt
 
	你可以参考whatsbackup.txt, 自定义备份文件和目录来替换掉上述命令
