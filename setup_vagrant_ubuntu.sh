#!/bin/bash -v

apt-get update
apt-get install -y wget git bridge-utils python python-pip

# VirtualBox Installation
# Add following line in "/etc/apt/sources.list"
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install virtualbox-5.2

### Vagrant install
wget https://releases.hashicorp.com/vagrant/2.1.1/vagrant_2.1.1_x86_64.deb
dpkg -i vagrant_2.1.1_x86_64.deb

## Ansible Install
sudo apt-get update
sudo apt-get -y install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get -y install ansible

## Install JunOS Ansible Module
sudo ansible-galaxy install Juniper.junos

pip install --upgrade pip
pip install jxmlease
pip install junos-eznc

## vQFX Box Addition
wget http://10.84.5.120/cs-shared/images/vagrant-boxes/vqfx-re-virtualbox.box
wget http://10.84.5.120/cs-shared/images/vagrant-boxes/vqfx10k-pfe-virtualbox.box

vagrant box add --name juniper/vqfx10k-re /var/tmp/vqfx-re-virtualbox.box
vagrant box add --name juniper/vqfx10k-pfe /var/tmp/vqfx10k-pfe-virtualbox.box

echo "List Box"
vagrant box list