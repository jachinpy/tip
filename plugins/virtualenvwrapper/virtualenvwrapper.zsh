if [ ! -d "$HOME/.virtualenvs" ];then
    mkdir $HOME/.virtualenvs
fi
if [ -f "/usr/bin/virtualenvwrapper.sh" ];then
    if [ ! -f "/usr/local/bin/virtualenvwrapper.sh" ];then
        sudo ln -s /usr/bin/virtualenvwrapper.sh /usr/local/bin/virtualenvwrapper.sh
    fi
fi

export WORKON_HOME=$HOME/.virtualenvs
VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source /usr/local/bin/virtualenvwrapper.sh

