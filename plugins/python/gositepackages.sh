#!/bin/bash


sitep () {
    local arg="$1"
    if [ $# -eq 1 ]
        then
        var_site=$(find ~/.virtualenvs -iname "site-packages" | grep $arg)
        cd $var_site
    else
        cd $VIRTUAL_ENV/lib/python2.7/site-packages
    fi
}
