#!/usr/bin/env bash

echo "Install Puppet modules..."

# To install latest versions use one command:
#
#     sudo puppet module install gajdaw-django_app
#

sudo puppet module install gajdaw-django_app --version 0.3.0 --force
sudo puppet module install gajdaw-diverse_functions --version 0.1.1 --force
sudo puppet module install gajdaw-django --version 0.2.0 --force
sudo puppet module install puppetlabs-apache --version 1.4.1 --force
sudo puppet module install puppetlabs-concat --version 1.2.2 --force
sudo puppet module install puppetlabs-stdlib --version 4.6.0 --force
sudo puppet module install gajdaw-environment --version 0.1.4 --force
sudo puppet module install gajdaw-ubuntu --version 0.1.13 --force

