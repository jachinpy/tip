#!/bin/bash

backup_home () {
	tar -zcvpf ./backup-home.tar.gz -T $1
}

backup_conf () {
	tar -zcvpf ./config.tar.gz -C / -T $1
}
