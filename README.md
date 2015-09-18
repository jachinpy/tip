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


## Commands
  
 + python utils
        
        sitep [virutalenv name]
            goto python2.7 site-packages for projects. use sitep command in shell.
            if you in virutalenv. You can use it by itself directly.

        pythonserver 
            simple server 9090 tcp. 简单的服务器.可以用来传输文件.
 + django

        jr 运行 runserver
        jt 运行 test
        jd 运行 dbshell
        jsy 运行 syncdb 
        jsp 运行  shell_plus

 + git 

        gh   - git hist 
        ghh  - git hist -max-count=1
        gfp  - git fetch -p
        gffs - git flow feature start $1
        gcfp - git cat-file -p 
        gcft - git cat-file -t
        gcto - git checkout --track origin $1

 + network
        extranet  获取外网IP        

 + locales
        fix_remote_locales 
             如果使用虚拟环境或远程服务器,可能会有 locale error.

 + swap keyboard
 
        (仅供参考, 需要手动切换到 develop 分支, 暂不更新)
        
        git checkout devlop
 
        ibus 输入法框架不可以删除，ubuntu组件依赖。在此基础上
        运行 gnome-tweak-tool 方法较好。
        Fcitx 输入法框架，需要使用 .Xmodmap 文件交换按键，并
        将指令装入 .xprofile 中，以便开机执行。
        .xkb 方法不适用于 fcitx 和 ibus 框架。

 + qq
        .plugins/qq/qq.zsh  安装 linux 版本QQ.

 + 数据备份

        backup_home

            用来备份迁移配置文件, eg:
            source migrate.sh
            backup_home /mnt/home_backup.tar.gz ~/utils/tip/whatsbackup.txt

            你可以参考whatsbackup.txt, 自定义备份文件和目录来替换掉上述命令


## Code Struct 

 + engine.sh
	用来启动组件的核心。
 + base-packages.sh
	用来初始化和更新系统安装包的组件，用于第一次或独立运行安装包。

