# = Class: environment
#
# The class to:
#   - install apache2-utils, curl, git, lynx-cur, mc, tree
#   - add cd /vagrant to vagrant's profile
#   - remove mesg n from root's profile
#
# === Parameters
#
# None
#

class environment {

    # validate_platform() function comes from
    # puppet module gajdaw/diverse_functions
    #
    #     https://forge.puppetlabs.com/gajdaw/diverse_functions
    #
    if !validate_platform($module_name) {
        fail("Platform not supported in module '${module_name}'.")
    }

    include stdlib

    $deps = [
        'apache2-utils',
        'curl',
        'git',
        'lynx-cur',
        'mc',
        'tree'
    ]
    ensure_packages($deps)

    file_line { 'environment::cd-vagrant':
        path  => '/home/vagrant/.profile',
        line  => 'cd /vagrant',
        match => 'cd /vagrant',

    }

    exec { 'environment::remove-mesg-n':
        path    => '/usr/bin:/bin:/usr/sbin:/sbin',
        command => 'sed -i "/mesg n/d" /root/.profile',
    }


}
