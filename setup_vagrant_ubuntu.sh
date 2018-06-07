#!/bin/bash -v

echo "Basic Packages Install"

echo "VirtualBox Install"


echo " Vagrnat Installation"

vagrant plugin install vagrant-vbguest

echo "Ansible Install"


echo "JunOS Ansible modules installation"
pip install --upgrade pip
pip install jxmlease
pip install junos-eznc

