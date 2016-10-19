# Class: ubuntu::upgrade
#
# How to run sudo apt-get upgrande in noninteractive mode:
#
#    sudo apt-get update -y
#    DEBIAN_FRONTEND=noninteractive sudo apt-get upgrade -y
#

class ubuntu::upgrade {

    Exec { path => [
        '/usr/local/sbin',
        '/usr/local/bin',
        '/usr/sbin',
        '/usr/bin',
        '/sbin',
        '/bin'
    ]}

    exec { 'ubuntu::upgrade':
        command     => 'apt-get upgrade -y',
        environment => ['DEBIAN_FRONTEND=noninteractive'],
        require     => [Class[ubuntu::update]]
    }

}
