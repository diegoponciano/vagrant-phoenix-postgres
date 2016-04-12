
echo "vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv"
echo "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
echo "======================================================================"
echo "=== Begin Vagrant Provisioning using 'config/vagrant/post_install_priveleged.sh'"

# Here I can place post install commands to install stuff which I need for
# my project. This file is specifically for code that must be
# executed as the super-user.

sudo npm install -g elm

echo "=== End Vagrant Provisioning using 'config/vagrant/post_install_priveleged.sh'"
