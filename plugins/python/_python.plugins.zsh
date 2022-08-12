#!/bin/bash


sitep () {
    local arg="$1"
    if [ $# -eq 1 ]
        then
        var_site=$(find $WORKON_HOME -iname "site-packages" | grep $arg)
        cd $var_site
    else
        cd $VIRTUAL_ENV/lib/python2.7/site-packages
    fi
}


ptags (){
    find  . -name \*.py -print | xargs ~/utils/tip/tools/python/ptags.py
}
