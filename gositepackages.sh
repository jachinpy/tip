#!/bin/sh

gosite () {
    if [[ $? -eq 0 ]]
        then
        cd $VIRTUAL_ENV/lib/python2.7/site-packages
    return 1
    fi
    cd $HOME/.virtualenvs/$1/lib/python2.7/site-packages
}
