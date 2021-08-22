#!/usr/bin

# postgresql client and server.
# libpq-dev sloved: Error: pg_config executable not found.
sudo apt-get install -y postgresql-client postgresql libpq-dev
if [ $? != 0 ]
then
echo "Error: postgres pg_config not fix!"
exit 1
fi

