Tip
========


## Version

    ubuntu 12.04 or 14.04


## Step

    安装git工具
    sudo apt-get install git
    
    mkdir -p ~/utils
    cd ~/utils

    克隆项目
    git clone https://github.com/jachinpy/tip.git

    初次安装系统, 安装必须软件
    ./base-packages.sh (if no permission, chmod a+x *.sh)
    
    如果需要图形化软件
    ./gui-extra.sh

    如果需要使用 tip 的配置文件
    vim ~/.zshrc
    source ~/utils/tip/engine.sh

    如果出现 locales Error 问题, 执行
    fix_remote_locales

## Configuration Support
  
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

 + engine.sh
	用来启动组件的核心。
 + base-packages.sh
	用来初始化和更新系统安装包的组件，用于第一次或独立运行安装包。
 + migrate.sh
	用来备份迁移配置文件, eg:

		备份数据:
		source migrate.sh
		backup_home /mnt/home_backup.tar.gz ~/project/tip/whatsbackup.txt
 
	你可以参考whatsbackup.txt, 自定义备份文件和目录来替换掉上述命令
