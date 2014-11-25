#!/bin/sh

#
#
#
#
wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_base.sh && bash equip_base.sh

sudo apt-add-repository ppa:chris-lea/redis-server -y

sudo apt-get update -y
sudo apt-get install redis-server -y

# stop service started by installation process
sudo service redis-server stop
