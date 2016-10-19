include stdlib
include environment

class {
    'ubuntu': stage => setup;
    'ruby':   stage => main;
    'nodejs': stage => main;
    'rails':
        stage   => main,
        require => [Class['ruby']];
    'sinatra':
        stage   => main,
        require => [Class['rails']];
}
