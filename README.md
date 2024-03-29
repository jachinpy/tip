Tip
========


##  系统要求 Required

    Ubuntu 14.04 or new release / CentOS


##  安装 Install

    mkdir -p ~/utils
    cd ~/utils && git clone https://github.com/jachinpy/tip.git

    vim ~/.bashrc or vim ~/.zshrc
    TIP_HOME=$HOME/utils/tip
    source ~/utils/tip/init.sh
    source ~/.bashrc or source ~/.zshrc


##  初始化安装任务 Init Installer

    初始化操作系统，安装必备软件
    cd installer/ubuntu
    或者
    cd installer/centos
    
    ./install.sh 也可以分别指定 ./install_[xxx].sh


### 模块 Module
    
    中文环境  

    输入法

    文本编辑器 vim pycharm

    开发软件 python mysql postgres 

    办公软件 wechat wps 

    shell 扩展包
    zsh\ohmyzsh

    扩展包
    ./extension_kits.sh



##  工具 Tools (Command Script etc.)
 
    dropBrowserCache  清理浏览器缓存
    或添加定时任务
    crontab -e
    e.g.
    30 10 * * * bash $HOME/utils/tip/tools/browserCleaner.sh

    /path/ptags.py

    getMachineProfile  获取系统信息

    releaseMemory  释放内存

    fix_git_email.sh 拷贝出去，替换变量


##  插件 Plugins

    包含一些命令、脚本等。

 + python
        
        sitep [virutalenv name]
            go to python2.7 site-packages for projects. use sitep command in shell.
            if you in virutalenv. You can use it by itself directly.

        pythonserver 
            simple server 9090 tcp. 简单的服务器.可以用来传输文件.
 + django

        jr  =>  runserver
        jt  =>  test
        jd  =>  dbshell
        jsy =>  syncdb
        jsp =>  shell_plus

 + git 

        gh   => git hist
        ghh  => git hist -max-count=1
        gfp  => git fetch -p
        gffs => git flow feature start $1
        gcfp => git cat-file -p 
        gcft => git cat-file -t
        gcto => git checkout --track origin $1

 + network

        extranet  获取外网IP        

 + locales

        fix_remote_locales 
             如果使用虚拟环境或远程服务器,可能会有 locale error.

 + swap keyboard
 
        (仅供参考, 需要手动切换到 develop 分支, 暂不更新)
        
        git checkout develop
 
        ibus 输入法框架不可以删除，Ubuntu组件依赖。在此基础上
        运行 gnome-tweak-tool 方法较好。
        Fcitx 输入法框架，需要使用 .Xmodmap 文件交换按键，并
        将指令装入 .xprofile 中，以便开机执行。
        .xkb 方法不适用于 fcitx 和 ibus 框架。


 + 数据备份

        bakhome to_path   备份家目录
        bakconf to_path   备份系统资源,包括源地址, 网络配置等

        参考 .ress 文件, 修改或替换备份文件, 记得还原.

 + hosts

        uphosts  [file-name]
        更新 hosts 文件


##  Pycharm
    cd configuration
    cp Pycharm.desktop /path/

    使用时,Exec,Icon,请使用绝对路径，文件名和Name保持一致，然后在可以支持Dash,
    同时，可以复制到桌面,然后双击即可使用。

## Ipython startup
    mkdir ~/.ipython/profile_default/startup/ 
    cp configuration/ipython/start.py ~/.ipython/profile_default/startup/start.py


##  Tmux
    sudo apt install -y tmux
    sudo gem install tmuxinator
    tmuxinator doctor

    关闭会话
    tkss huzhao

    退出会话
    tmux detach


    F2 上一页
    F3 下一页

    # Tmux2 以上, 开启鼠标支持
    set -g mouse on
    复制: 按住shift键,然后拖动鼠标复制要选择的内容，然后按下shift+ctrl+c,复制到系统剪贴板
    粘贴: 按下shift+ctrl+v 粘贴系统剪贴板中的内容到tmux中




## 模板 Templates
    
    记录一些常用的工具、配置等。

#### 配置 Configuration

    完整配置在 configuration/
    cp vimrc ~/.virmc # 对应版本.vim 包
    cp gitconfig ~/.gitconfig

## A few tips

    创建开发级别的目录, 使用小写区别于系统默认的大写，使用tmp来区别系统Temp目录。
    cd ~
    mkdir -p srv/pypi/web/
    mkdir tmp
