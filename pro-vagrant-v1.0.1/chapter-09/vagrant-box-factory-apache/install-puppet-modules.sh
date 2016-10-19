#!/usr/bin/env bash

echo "Install Puppet modules..."

sudo puppet module install puppetlabs-apache --version 1.4.0 --force
sudo puppet module install puppetlabs-concat --version 1.2.0 --force
sudo puppet module install puppetlabs-stdlib --version 4.6.0 --force

sudo puppet module install gajdaw-ubuntu --version 0.1.13 --force
sudo puppet module install gajdaw-diverse_functions --version 0.1.1 --force

sudo puppet module install gajdaw-environment --version 0.1.4 --force

