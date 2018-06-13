# Vagrant-Host-Setup

This repo provide instructions and scripts setting up BMS host machine for Vagrant & Ansible.

## CentOS 7.5 Vagrant Installation

Install CentOS 7.5 on the BMS host and following below steps:

```bash
host> git clone https://github.com/qarham/vagrant-host-setup.git
host> cd vagrant-host-setup
host> ./setup_vagrant_centos.sh
```
Note: "setup_vagrant_centos.sh" script will take care of installtion of VirtualBox 5.2, Vagrant, Ansible and JunOS python & ansible modules.

In case you would also like setting up bridge interfaces for the Host please use following config as reference.

### br0 interface config

```bash
cat /etc/sysconfig/network-scripts/ifcfg-br0
DEVICE=br0
BOOTPROTO=static
IPADDR=10.87.65.30
NETMASK=255.255.255.128
GATEWAY=10.87.65.126
DNS1=172.21.200.60
ONBOOT=yes
TYPE=Bridge
NM_CONTROLLED=no

cat /etc/sysconfig/network-scripts/ifcfg-ens2f1
NM_CONTROLLED=no
BOOTPROTO=none
DEVICE=ens2f1
TYPE=Ethernet
ONBOOT=yes
BRIDGE=br0
```

### br1 interface config

```bash
cat /etc/sysconfig/network-scripts/ifcfg-br1
DEVICE=br1
BOOTPROTO=static
IPADDR=192.168.1.30
NETMASK=255.255.255.0
ONBOOT=yes
TYPE=Bridge
NM_CONTROLLED=no

cat /etc/sysconfig/network-scripts/ifcfg-ens2f0
NM_CONTROLLED=no
BOOTPROTO=none
DEVICE=ens2f0
TYPE=Ethernet
ONBOOT=yes
BRIDGE=br1
```