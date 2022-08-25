#!/bin/bash
# vim ~/.bash_profile
# source ~/_git_bash.sh
# quit vim and then;
# source ~/.bash_profile

_git_branch() {
   if git rev-parse --git-dir > /dev/null 2>&1;then
       git branch | grep "*" | awk '{printf $2}'
   fi
}

alias g="git"
alias gst="git status"
alias ga="git add"
alias gdca="git diff --cached"
alias gd="git diff"
alias gc="git commit"
alias gb="git branch"
alias gba="git branch -a"
alias gco="git checkout"
alias gcm="git chekcout main"
alias glog="git log --oneline"
alias gsta="git stash save"
alias gstp="git stash pop"
alias ggu="git pull origin ""$(_git_branch)"
alias ggp="git push origin ""$(_git_branch)"

