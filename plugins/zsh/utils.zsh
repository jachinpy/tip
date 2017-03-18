#!/bin/bash


cmdcount () {
    history | awk '{CMD[$2]++;count++;} END { for (a in CMD )print CMD[a] " " CMD[a]/count*100 "% " a }' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl | head -n10
}

#
extranet () {
    curl ifconfig.me
}

getallwebsite () {
    wget --random-wait -r -p -e robots=off -U mozilla '$1'
}

pythonserver () {
    python -m SimpleHTTPServer 9090
}

alias jpgmv="python ~/utils/tip/plugins/codingutils/coding.py"

# you should install deepwine qqintl.
alias qqfind="find ~/.deepinwine/qqintl| grep FileRecv | grep $1"

# tree -I node_modules
alias treei="tree -I node_modules"

alias rsyncc="rsync -avzrtopgL  --progress "
