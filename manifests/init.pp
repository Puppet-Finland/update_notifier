#
# == Class: update_notifier
#
# A class for managing update-notifier tools, which is useful for determining if 
# the server requires a reboot or if it has pending updates.
#
# == Parameters
#
# [*manage*]
#   Manage update-notifier with Puppet. Valid values are true (default) and
#   false.
#
# == Authors
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
#
# Samuli Seppänen <samuli@openvpn.net>
#
# == License
#
# BSD-license. See file LICENSE for details.
#
class update_notifier
(
    Boolean $manage = true
)
{
if $manage {

    # On non-Debian platforms this class makes little sense and could cause 
    # puppet run failures.
    #
    if $::osfamily == 'Debian' {
        include ::update_notifier::install::common
    }
}
}
