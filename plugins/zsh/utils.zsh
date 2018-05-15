#!/bin/bash


cmdcount () {
    history | awk '{CMD[$2]++;count++;} END { for (a in CMD )print CMD[a] " " CMD[a]/count*100 "% " a }' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl | head -n10
}

#
extranet () {
    curl ifconfig.me
}


alias jpgmv="python ~/utils/tip/plugins/codingutils/coding.py"
# you should install deepwine qqintl.
alias qqfind="find ~/.deepinwine/qqintl| grep FileRecv | grep $1"
# tree -I node_modules
alias treei="tree -I node_modules"
alias rsyncc="rsync -avzrtopgL  --progress "

# list current directory tree.
alias dtree="find $PWD -type d"

# list directory.
alias lf="ls -F | grep '/$'"

# sync sites mirror
alias mirror_sites_sync="wget -m -E -k -p -np -c robots=off -U 'Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6'"
