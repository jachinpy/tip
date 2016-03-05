#!/bin/sh


function emv () { 
    mv $1 $2 && sudo updatedb;
}

# change pwd emacs term shell
if [ -n "$INSIDE_EMACS" ]; then
    chpwd() { print -P "\033AnSiTc %d" }
    print -P "\033AnSiTu %n"
    print -P "\033AnSiTc %d"
fi
