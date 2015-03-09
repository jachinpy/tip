#!/bin/sh

encryptPasswd="691c4a"
mysqldump --opt -uroot lag |gzip -9 > ~/db-`date +"%Y-%m-%d_%H-%M"`.gz
cd ~
echo ${encryptPasswd} | gpg --yes -c --passphrase-fd 0 db-`date +"%Y-%m-%d_%H-*"`.gz
rm -rf db-`date +"%Y-%m-%d_%H-*"`.gz
#find ~/ -mtime +20 -name "*.gz" -exec rm -rf {} ;
