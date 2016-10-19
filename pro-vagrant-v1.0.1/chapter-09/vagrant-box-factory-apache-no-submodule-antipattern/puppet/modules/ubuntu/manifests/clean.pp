# Class: ubuntu::clean
#
#

class ubuntu::clean {

    exec { 'ubuntu::clean':
        command => 'apt-get clean',
        path    => '/usr/bin',
        require => [Class[ubuntu::upgrade]]
    }

}
