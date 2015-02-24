Tip
========

ubuntu 12.04 | 14.04 or better version.


#### Goal

- initial ubuntu env.
- develoop tool
- system tool
- configuration shell


#### Setup

    start initial simple
    
	    sudo apt-get install git
	    git clone https://github.com/jachinpy/tip.git
	    cd $MYPATH
	    ./install_ubuntu_env.sh (chmod a+x install_ubuntu_env.sh)

#### Feature

    This is you can customize install. nothing feature default.


	install linux qq.
	    ./install_qq.sh


    install goto python2.7 site-packages for projects.
        add .zshrc

        source $HOME/path/to/tip/gositepackages.sh

        
        use sitep command in shell.
        sitep [virutalenv name]
            if you in virutalenv. You can use it by itself.
            for eg.

        if you have virtualenvwrapper.
        
            workon exmaple
            (example)~ sitep
            
        or use:
        
            ~ sitep exmaple
