Tip
========

ubuntu 12.04 or 14.04


## Goal

 - initial ubuntu
 - add develoop tool
 - add utils tool
 - more feature


## First
    sudo apt-get install git
    git clone https://github.com/jachinpy/tip.git
        ./init-packages.zsh (if no permission, chmod a+x *.zsh)
        
## Feature
  
 + python utils

        [installed] goto python2.7 site-packages for projects.
                use sitep command in shell.
        
        sitep [virutalenv name]
            if you in virutalenv. You can use it by itself.
            for eg.

        if you have virtualenvwrapper.

            workon exmaple
            (example)~ sitep

        or use:

            ~ sitep exmaple

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
 + init-packages.zsh
	用来初始化和更新系统安装包的组件，用于第一次或独立运行安装包。
 + migrate.zsh
	用来迁移配置文件。
 
