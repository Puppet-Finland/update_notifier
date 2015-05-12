#
# == Class: update_notifier::params
#
# Defines some variables based on the operating system
#
class update_notifier::params {

    case $::osfamily {
        'Debian': {
            $common_package_name = 'update-notifier-common'
        }
        default: {
            fail("Unsupported OS: ${::osfamily}")
        }
    }
}
