#!/bin/sh

set -e

# Must be run as root

adduser --disabled-password --gecos \"\" vagrant || echo User vagrant exists
echo vagrant:vagrant | chpasswd
mkdir -p /home/vagrant/.ssh
chmod 0700 /home/vagrant/.ssh
wget --no-check-certificate https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub -O /home/vagrant/.ssh/authorized_keys
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant /home/vagrant/.ssh
echo 'vagrant  ALL=(ALL:ALL) ALL' >> /etc/sudoers
