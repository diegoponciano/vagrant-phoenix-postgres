#!/usr/bin/env bash

echo "vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv"
echo "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
echo "======================================================================"
echo "=== Begin Vagrant Provisioning using 'config/vagrant/build_dependency_setup.sh'"

# https://bugs.launchpad.net/ubuntu/+bug/1561250
if [ $(cat /etc/hosts | grep -co 'ubuntu-xenial') = 0 ]; then
  echo "sudo sh -c ""echo '127.0.1.1 ubuntu-xenial' >> /etc/hosts"""
  sudo sh -c "echo '127.0.1.1 ubuntu-xenial' >> /etc/hosts"
else
  echo "Found entry 'ubuntu-xenial' in the /etc/hosts"
fi

# Install build dependencies for a sane build environment
sudo apt-get -y update
sudo apt-get -y install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev libgtk2.0-0 libgtk2.0-bin libgtk2.0-common

# Problem installing esl-erlang.
# Standard installation methods for libwxbase fail.
# http://packages.ubuntu.com/search?suite=default&section=all&arch=any&keywords=libwxbase&searchon=names
# Even after the explicit installation of libwxbase3.0-0v5 the dependencies are not resolved, so
# this forces us to manually install libwxbase3 and libwxgtk3.
wget http://archive.ubuntu.com/ubuntu/pool/universe/w/wxwidgets3.0/libwxbase3.0-0_3.0.2-1_amd64.deb
yes Y | sudo dpkg -i libwxbase3.0-0_3.0.2-1*.deb
yes Y | sudo apt-get -f install

wget http://archive.ubuntu.com/ubuntu/pool/universe/w/wxwidgets3.0/libwxgtk3.0-0_3.0.2-1_amd64.deb
yes Y | sudo dpkg -i libwxgtk3.0-0_3.0.2-1*.deb
yes Y | sudo apt-get -f install

echo "=== End Vagrant Provisioning using 'config/vagrant/build_dependency_setup.sh'"
