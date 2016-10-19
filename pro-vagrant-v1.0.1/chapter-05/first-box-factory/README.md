Vagrant Box Factory
===================

The project to create the box manually.

The commands to run in the guest OS:

    # Guest OS
    $ sudo apt-get update -y
    $ sudo apt-get install nodejs -y
    $ sudo apt-get install lynx-cur -y
    $ sudo apt-get install ruby1.9.1-dev -y
    $ sudo gem install jekyll

The commands to produce the box:

    # Host OS
    $ vagrant package --output first-box-jekyll.box

