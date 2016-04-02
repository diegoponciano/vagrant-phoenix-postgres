#!/usr/bin/env bash

echo "======================================================================"
echo "=== Begin Vagrant Provisioning using 'config/vagrant/phoenix_setup.sh'"

# Install the latest version of Phoenix
  echo "===== Installing Phoenix"
  yes Y | mix local.hex
  yes Y | mix archive.install "https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez"

echo "=== End Vagrant Provisioning using 'config/vagrant/phoenix_setup.sh'"
