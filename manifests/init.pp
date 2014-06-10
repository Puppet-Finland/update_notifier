#
# == Class: update_notifier
#
# A class for managing update-notifier tools, which is useful for determining if 
# the server requires a reboot or if it has pending updates.
#
class update_notifier {

    # On non-Debian platforms this class makes little sense and could cause 
    # puppet run failures.
    #
    if $::osfamily == "Debian" {
        include update_notifier::install::common
    }
}
