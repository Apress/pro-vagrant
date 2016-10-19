Songs for kids - Ruby on Rails application
==========================================

How to run the application?

Clone the repo:

    $ git clone https://github.com/pro-vagrant/songs-app-rails.git

Enter the directory:

    $ cd songs-app-rails

Boot VM:

    $ vagrant up

Start your web browser and visit:

    http://127.0.0.1:3000

## How to install the box manually?

Due to the Vagrant's bug https://github.com/mitchellh/vagrant/issues/5449
checksums are verified only when you use `$ vagrant box add` command.

You can install the box manually using the command shown below:

    vagrant box add \
        --name rails-v0.5.5 \
        --checksum-type sha256 \
        --checksum 0d20b0f90d0ffc483039edb69448d80b0f0440bcc926a5341e2f70af08b76960 \
        http://boxes.gajdaw.pl/rails/rails-v0.5.5.box

The above command verifies the checksum of a newly installed box.
