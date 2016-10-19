Vagrant Box Factory: Django
===========================

Underlying OS: Ubuntu 14.04 generated with https://github.com/pro-vagrant/ubuntu

#1. Binary version

Binary version of a box is available at:
http://boxes.gajdaw.pl/django/

#2. How to produce this box?

##2.1. With `build.sh` script

    ./build.sh

To produce arbitrary version, e.g. v1.2.3, use:

    git checkout v1.2.3
    ./build.sh

##2.2. Manually

    vagrant up
    vagrant package --vagrantfile VagrantfileToInclude --output "django-v1.2.3.box"
