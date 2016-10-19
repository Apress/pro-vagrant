# Class: ubuntu::update
#
#

class ubuntu::update {

    exec { 'ubuntu::update':
        command => 'apt-get update -y',
        path    => '/usr/bin'
    }

}

