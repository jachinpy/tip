#!/bin/bash


daystamp=$(date +%Y-%m-%d)
basedirscript=$(cd "$(dirname "$0")"; pwd)


bakhome () {
	cd $HOME;
	tar -zcvpf  "$1/home$daystamp.tar.gz" -T "$basedirscript/bakhome.ress"
}

bakconf () {
	tar -zcvpf "$1/conf$daystamp.tar.gz" -C / -T "$basedirscript/sys_init.ress"
}

# put google | mozilla hosts in here. and so on.
uphosts () {
     sudo sh -c 'echo "`cat $1`" >> /etc/hosts'
}

