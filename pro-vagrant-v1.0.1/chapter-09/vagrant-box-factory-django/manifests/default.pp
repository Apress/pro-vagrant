include stdlib
include environment

class { ubuntu: stage => setup }


class { 'django_app':
    default_vhost  => false,
    service_enable => false,
    service_ensure => false
}
