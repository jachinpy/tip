#!/bin/bash

backup_home () {
	tar -zcvpf ./backup-home.tar.gz -T $1
}
