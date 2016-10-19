# Class: ubuntu
#
# This class updates and upgrades ubuntu
#
#

class ubuntu ($action = 'update') {

    # validate_platform() function comes from
    # puppet module gajdaw/diverse_functions
    #
    #     https://forge.puppetlabs.com/gajdaw/diverse_functions
    #
    if !validate_platform($module_name) {
        fail("Platform not supported in module '${module_name}'.")
    }

    case $action {

        'upgrade': {
            include ubuntu::update
            include ubuntu::upgrade
        }

        'clean': {
            include ubuntu::update
            include ubuntu::upgrade
            include ubuntu::clean
        }

        default: {
            include ubuntu::update
        }

    }

}