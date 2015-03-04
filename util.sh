#!/bin/sh

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
