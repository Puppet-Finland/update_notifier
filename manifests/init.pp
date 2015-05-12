#
# == Class: update_notifier
#
# A class for managing update-notifier tools, which is useful for determining if 
# the server requires a reboot or if it has pending updates.
#
# == Parameters
#
# [*manage*]
#   Manage update-notifier with Puppet. Valid values are 'yes' (default) and 
#   'no'.
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
    $manage = 'yes'
)
{
if $manage == 'yes' {

    # On non-Debian platforms this class makes little sense and could cause 
    # puppet run failures.
    #
    if $::osfamily == 'Debian' {
        include ::update_notifier::install::common
    }
}
}
