#!/bin/bash

backup_home () {
	tar -zcvpf ./backup-home.tar.gz -T $1
}

backup_conf () {
	tar -zcvpf ./config.tar.gz -C / -T $1
}

# put google | mozilla hosts in here. and so on.
updatehosts () {
     sudo sh -c 'echo "`cat $1`" >> /etc/hosts'
}
