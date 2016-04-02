#!/usr/bin/env bash

echo "======================================================================"
echo "=== Begin Vagrant Provisioning using 'config/vagrant/build_dependency_setup.sh'"

# Install build dependencies for a sane build environment
sudo apt-get -y update
sudo apt-get -y install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev libgtk2.0-0 libgtk2.0-bin libgtk2.0-common
sudo apt-get -y install libwxbase2.8-0 libwxgtk2.8-0

echo "=== End Vagrant Provisioning using 'config/vagrant/build_dependency_setup.sh'"
