#!/usr/bin/env bash

apt-get install python-software-properties -y
add-apt-repository ppa:fkrull/deadsnakes
apt-get update
apt-get install python3.4 -y
apt-get install curl -y
#curl https://bootstrap.pypa.io/get-pip.py > get-pip.py
#sudo python3.4 get-pip.py
rm -rf /var/www
ln -fs /vagrant /var/www