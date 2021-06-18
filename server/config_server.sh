#!/bin/bash
set -x

# update all the scripts before running them
if [ ! -d mbed-os-lava-scripts ]; then
   git clone https://github.com/paul-szczepanek-arm/lava-prototype.git mbed-os-lava-scripts
fi
cd mbed-os-lava-scripts
git fetch
git reset --hard origin/master

cp -rf ./lava-server /etc
chown -R lavaserver /etc/lava-server
chgrp -R lavaserver /etc/lava-server

lava-server manage users add lava-admin --passwd lava-admin
lava-server manage authorize_superuser --username lava-admin

/root/entrypoint.sh
