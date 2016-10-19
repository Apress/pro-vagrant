Vagrant Box with Jekyll - Ansible provisioner
===========================================

How to produce the box named ``vagrant-jekyll-ansible-v0.2.0``:

    vagrant up
    git checkout v0.2.0
    vagrant package --output vagrant-jekyll-ansible-v0.2.0.box
    git checkout master

How to install the box in the system:

    vagrant box add vagrant-jekyll-ansible-v0.2.0 vagrant-jekyll-ansible-v0.2.0.box
