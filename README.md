Tip
========

ubuntu 12.04 or 14.04


## Goal

 - initial ubuntu env
 - develoop tool
 - system tool
 - configuration more feature


## Setup

    start initial simple

	    sudo apt-get install git
	    git clone https://github.com/jachinpy/tip.git
        ./setup.sh (if False, do chmod a+x setup.sh)
        
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

 + swap key
 
        (仅供笔记本使用, 需要手动切换到 develop 分支)
        
        git checkout devlop
 
        ibus 输入法框架不可以删除，ubuntu组件依赖。在此基础上
        运行 gnome-tweak-tool 方法较好。
        Fcitx 输入法框架，需要使用 .Xmodmap 文件交换按键，并
        将指令装入 .xprofile 中，以便开机执行。
        .xkb 方法不适用于 fcitx 和 ibus 框架。

 + plugins

        install scbl for emacs.
        ./scbl.sh

    	install linux qq.
	    ./install_qq.sh

 + init system
 
        zsh, oh-my-zsh, pip, virtualenv, virtualenvwrapper,...
