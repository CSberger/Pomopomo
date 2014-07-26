#!/usr/bin/env bash

apt-get install python-software-properties -y
add-apt-repository ppa:fkrull/deadsnakes
apt-get update
apt-get install python3.4 -y
apt-get install curl -y
curl https://bootstrap.pypa.io/get-pip.py > get-pip.py
python3.4 get-pip.py
python3.4 -m venv ~/venv
source ~/venv/bin/activate
pip3.4 install -r /vagrant/pip-requirements.txt
pip3.4 install https://www.djangoproject.com/download/1.7c1/tarball/
deactivate

rm -rf /var/www
ln -fs /vagrant /var/www