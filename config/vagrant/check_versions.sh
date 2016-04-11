#!/usr/bin/env bash

echo "vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv"
echo "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
echo "======================================================================"
echo "=== Begin Vagrant Provisioning using 'config/vagrant/check_version.sh'"

echo " "
echo " "
echo "git --version"
git --version
echo " "
echo " "
echo "node --version"
node --version
echo " "
echo " "
echo "psql --version"
psql --version
echo " "
echo " "
echo "cat /usr/lib/erlang/releases/RELEASES"
cat /usr/lib/erlang/releases/RELEASES
echo " "
echo " "
echo "elixir --version"
elixir --version
echo " "
echo " "
echo "mix help phoenix.new"
mix help phoenix.new | sed -e 3b -e '$!d'
strings ~/.mix/archives/phoenix_new.ez | grep '{vsn,'
echo " "
echo " "

echo "=== End Vagrant Provisioning using 'config/vagrant/check_version.sh'"
