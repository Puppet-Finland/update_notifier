#
# == Class: update_notifier::install::common
#
# Install update-notifier command-line tools. This does not pull with it any GUI 
# things and is suitable for inclusion on servers.
#
class update_notifier::install::common inherits update_notifier::params {

    package { 'update_notifier':
        ensure => installed,
        name   => $::update_notifier::params::common_package_name,
    }
}
