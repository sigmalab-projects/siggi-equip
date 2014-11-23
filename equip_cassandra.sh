#!/bin/sh

#
#
#
#
wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_base.sh && bash equip_base.sh

sudo wget -q -O - http://debian.datastax.com/debian/repo_key | sudo apt-key add -

sudo sh -c 'sudo echo "deb http://debian.datastax.com/community/ stable main" > /etc/apt/sources.list.d/datastax.list'

sudo apt-get update -y
sudo apt-get install dsc21 -y
sudo apt-get install cassandra-tools -y

# stop service started by installation process
sudo service cassandra stop
sudo rm -rf /var/lib/cassandra/data/system/*
