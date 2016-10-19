Vagrant Box Factory
=====================

Apache no submodules antipattern
================================

Underlying OS: Ubuntu 14.04 generated with https://github.com/pro-vagrant/ubuntu

##1. How to clone the repo (with submodules)?

    git clone https://github.com/pro-vagrant/vagrant-box-factory-apache-no-submodule-antipattern.git

#2. How to produce this box?

##2.1. With `build.sh` script

    ./build.sh

To produce arbitrary version, e.g. v1.2.3, use:

    git checkout v1.2.3
    ./build.sh

##2.2. Manually

    vagrant up
    vagrant package --vagrantfile VagrantfileToInclude --output "apache-no-submodule-antipattern-v1.2.3.box"

