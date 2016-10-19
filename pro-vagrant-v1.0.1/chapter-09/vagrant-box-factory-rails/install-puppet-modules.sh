#!/usr/bin/env bash

echo "Install Puppet modules..."

# To install latest versions use one command:
#
#     sudo puppet module install gajdaw-symfony
#

sudo puppet module install puppetlabs-stdlib --version 4.6.0 --force
sudo puppet module install gajdaw-ruby --version 0.5.3 --force
sudo puppet module install gajdaw-diverse_functions --version 0.1.1 --force
sudo puppet module install gajdaw-rails --version 0.1.16 --force
sudo puppet module install gajdaw-environment --version 0.1.4 --force
sudo puppet module install gajdaw-ubuntu --version 0.1.13 --force
sudo puppet module install gajdaw-nodejs --version 0.2.2 --force
sudo puppet module install gajdaw-bundle_install --version 0.1.1 --force
sudo puppet module install gajdaw-vcsrepository --version 0.1.3 --force

