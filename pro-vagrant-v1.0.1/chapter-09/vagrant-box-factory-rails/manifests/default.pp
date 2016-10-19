include stdlib
include environment

class { ubuntu: stage => setup }

class { ruby: }

class { rails:
    require => Class['ruby']
}

class { nodejs: }

class { 'bundle_install':
    repo    => 'https://github.com/pro-vagrant/songs-app-rails.git',
    require => Class['ruby', 'rails', 'nodejs']
}
