Songs for kids - Django application
===================================

How to run the application?

Clone the repo:

    $ git clone https://github.com/pro-vagrant/songs-app-django.git

Enter the directory:

    $ cd songs-app-django

Boot VM:

    $ vagrant up

Start your web browser and visit:

    http://127.0.0.1:8000

## How to install the box manually?

Due to the Vagrant's bug https://github.com/mitchellh/vagrant/issues/5449
checksums are verified only when you use `$ vagrant box add` command.

You can install the box manually using the command shown below:

    vagrant box add \
        --name django-v0.2.4 \
        --checksum-type sha256 \
        --checksum 86637c21234ce0f4a563f665dba16776346299ebd59674a68328ff93f626404a \
        http://boxes.gajdaw.pl/django/django-v0.2.4.box

The above command verifies the checksum of a newly installed box.

