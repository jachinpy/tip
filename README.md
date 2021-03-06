Tip
========


##  Support

    Ubuntu 14.04 or new
    Centos


##  step
    
    需要提前安装的软件
    openssh-server   (虚拟机)
    git
    vim

    mkdir -p ~/utils
    cd ~/utils && git clone https://github.com/jachinpy/tip.git
    
    部署环境
    ./loader.sh (如失效，可分别安装ubuntu.sh,centos.sh)

    如果需要安装到其他目录：
    cd tip/
    vim init.sh
    项目根目录默认：TIP_JACHINPY=$HOME/utils/tip
    可以设置 export TIP_JACHINPY=/path/
    source ~/.zshrc


##  Install ubuntu packages for pythoner
    sudo apt-get update
    ./ubuntu.sh (if no permission, chmod a+x *.sh)


##  Install centos packages for pythoner
    ./centos.sh
    

##  Install mysql
    ./centos_mysql.sh
    ./ubuntu_mysql.sh
     
	
##  Configuration
    vim ~/.zshrc
    or
    vim ~/.bashrc

    source ~/utils/tip/init.sh

## security
    ./security.zsh 扫描系统


##  Commands
  
 + python utils
        
        sitep [virutalenv name]
            go to python2.7 site-packages for projects. use sitep command in shell.
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
        
        git checkout develop
 
        ibus 输入法框架不可以删除，Ubuntu组件依赖。在此基础上
        运行 gnome-tweak-tool 方法较好。
        Fcitx 输入法框架，需要使用 .Xmodmap 文件交换按键，并
        将指令装入 .xprofile 中，以便开机执行。
        .xkb 方法不适用于 fcitx 和 ibus 框架。

 + qq
        .plugins/qq/qq.zsh  安装 Linux 版本QQ.

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


## A few tips

    如何合理创建linux系统？
    /boot/ /home/  根， 应当最少这几项. 方便系统重度瘫痪后快速修复。
    方法： 保留家目录，其它分区格式化。

    如何在 linux 中开发？
    方法： 隔离, 无论使用 virtualenv, docker, 还是虚拟机，都会
    降低开发风险。

    创建开发级别的目录, 使用小写区别于系统默认的大写，使用tmp来区别系统Temp目录。
    cd ~
    mkdir -p srv/pypi/web/
    mkdir tmp

# Tmux
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
