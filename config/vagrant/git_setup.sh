#!/usr/bin/env bash

echo "======================================================================"
echo "=== Begin Vagrant Provisioning using 'config/vagrant/git_setup.sh'"

# Install Git if not available
if [ -z `which git` ]; then
  echo "===== Installing Git"
  sudo apt-get -y update
  sudo apt-get -y install git-core
fi

echo "=== End Vagrant Provisioning using 'config/vagrant/git_setup.sh'"
