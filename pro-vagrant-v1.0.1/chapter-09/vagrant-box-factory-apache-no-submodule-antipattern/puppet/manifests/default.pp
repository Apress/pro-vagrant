include stdlib
include environment

class { ubuntu: stage => setup }

class {
    'apache': default_vhost => false;
}

apache::vhost { 'app.lh':
    port          => '80',
    docroot       => '/vagrant/web',
    docroot_owner => 'vagrant',
    docroot_group => 'vagrant',
}
