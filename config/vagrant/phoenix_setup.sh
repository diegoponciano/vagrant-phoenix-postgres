#!/usr/bin/env bash

echo "vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv"
echo "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
echo "======================================================================"
echo "=== Begin Vagrant Provisioning using 'config/vagrant/phoenix_setup.sh'"

# Install the latest version of Phoenix
  echo "===== Installing Phoenix"
  mix local.hex --force
  mix local.rebar --force
  mix archive.install "https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez" --force

echo "=== End Vagrant Provisioning using 'config/vagrant/phoenix_setup.sh'"
