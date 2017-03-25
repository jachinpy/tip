if [ ! -d "$HOME/.virtualenvs" ];then
    mkdir $HOME/.virtualenvs
fi

export WORKON_HOME=$HOME/.virtualenvs
VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2.7
source /usr/local/bin/virtualenvwrapper.sh

