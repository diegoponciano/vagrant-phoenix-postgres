echo "======================================================================"
echo "=== Begin Vagrant Provisioning using 'config/vagrant/check_version.sh'"

echo "git --version"
git --version
echo "node --version"
node --version
echo "psql --version"
psql --version
echo "cat /usr/lib/erlang/releases/RELEASES"
cat /usr/lib/erlang/releases/RELEASES
echo "elixir --version"
elixir --version

echo "=== End Vagrant Provisioning using 'config/vagrant/check_version.sh'"
