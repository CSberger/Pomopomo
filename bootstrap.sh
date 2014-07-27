#!/usr/bin/env bash

apt-get install python-software-properties -y
add-apt-repository ppa:fkrull/deadsnakes
apt-get update
apt-get install python3.4-dev -y
apt-get install libpq-dev -y
apt-get install python3.4 -y

apt-get install curl -y
curl https://bootstrap.pypa.io/get-pip.py > get-pip.py
python3.4 get-pip.py
python3.4 -m venv /opt/venv
source /opt/venv/bin/activate
pip3.4 install -r /vagrant/pip-requirements.txt
pip3.4 install https://www.djangoproject.com/download/1.7c2/tarball/
deactivate

rm -rf /var/www
ln -fs /vagrant /var/www
ln -s /vagrant /home/vagrant/DjangoProject