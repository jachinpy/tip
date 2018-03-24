#!/bin/bash

# apache ab
sudo apt-get install -y apache2-utils docker-engine

# postgresql client and server.
# libpq-dev sloved: Error: pg_config executable not found.
sudo apt-get install -y postgresql-client postgresql libpq-dev
if [ $? != 0 ]
then
echo "Error: postgres pg_config not fix!"
exit 1
fi

sudo apt-get install pandoc ess
sudo apt-get install slime clisp gcl
ln -s /usr/bin/clisp ~/bin/lisp