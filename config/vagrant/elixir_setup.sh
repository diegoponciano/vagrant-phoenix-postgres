#!/usr/bin/env bash

echo "vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv"
echo "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
echo "======================================================================"
echo "=== Begin Vagrant Provisioning using 'config/vagrant/elixir_setup.sh'"

# Install elixir if not available
# Note: the URL of erlang will
if [ -z `which elixir` ]; then
  echo "===== Installing Elixir"
  # https://www.erlang-solutions.com/resources/download.html
  # We have to use the more complex alternative erlang install as the
  # standard install does not detect the Ubuntu codename correctly.
  # Even if you have Ubuntu wily installed, the codename squeezy is
  # prompted, and used for the insall, and the installation of erlang fails.
  wget http://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc
  sudo apt-key add erlang_solutions.asc
  # There is as of now no erlang download for xenial, so we have to hard code wily.
  sudo add-apt-repository "deb http://packages.erlang-solutions.com/ubuntu wily contrib"
  # sudo add-apt-repository "deb http://packages.erlang-solutions.com/ubuntu $(lsb_release -s -c) contrib"
  sudo apt-get update
  yes Y | sudo apt-get install esl-erlang
  sudo apt-get install elixir
  yes Y | mix local.hex
  yes Y | mix archive.install "https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez"
fi

echo "=== End Vagrant Provisioning using 'config/vagrant/elixir_setup.sh'"
