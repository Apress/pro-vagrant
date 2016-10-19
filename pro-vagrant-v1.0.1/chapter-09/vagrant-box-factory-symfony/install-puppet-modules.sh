#!/usr/bin/env bash

sleep 30

echo "Install Puppet modules..."

# To install latest versions use one command:
#
#     sudo puppet module install gajdaw-symfony
#

sudo puppet module install gajdaw-symfony --force --version 0.2.0
sudo puppet module install gajdaw-environment --force --version 0.1.2
sudo puppet module install gajdaw-filefetcher --force --version 0.1.6
sudo puppet module install gajdaw-nodejs --force --version 0.1.2
sudo puppet module install gajdaw-php5 --force --version 0.1.7
sudo puppet module install gajdaw-php_phars --force --version 0.1.8
sudo puppet module install gajdaw-ubuntu --force --version 0.1.11
sudo puppet module install gajdaw-vcsrepository --force --version 0.1.3

sudo puppet module install maestrodev/wget --force --version 1.5.7

sudo puppet module install puppetlabs/concat --force --version 1.1.2
sudo puppet module install puppetlabs-mysql --force --version 3.1.0
sudo puppet module install nanliu/staging --force --version 1.0.3
sudo puppet module install puppetlabs-stdlib --force --version 4.5.1


