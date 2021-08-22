#!/bin/sh



# tramp hangs fix.
if [[ "$TERM" == "dumb" ]]
then
  unsetopt zle
  unsetopt prompt_cr
  unsetopt prompt_subst
#  unfunction precmd
#  unfunction preexec
  PS1='$ '
fi




function emv () { 
    mv $1 $2 && sudo updatedb;
}

# change pwd emacs term shell
if [ -n "$INSIDE_EMACS" ]; then
    chpwd() { print -P "\033AnSiTc %d" }
    print -P "\033AnSiTu %n"
    print -P "\033AnSiTc %d"
fi
