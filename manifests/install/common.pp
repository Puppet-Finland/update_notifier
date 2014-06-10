#
# == Class: update_notifier::install::common
#
# Install update-notifier command-line tools. This does not pull with it any GUI 
# things and is suitable for inclusion on servers.
#
class update_notifier::install::common {

    package { 'update_notifier-update-notifier-common':
        name => 'update-notifier-common',
        ensure => installed,
    }

}
