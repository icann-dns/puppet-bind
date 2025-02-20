# Class: bind::server
#
# For backwards compatibility. Use the main bind class instead.
#
class bind::server (
  $chroot               = false,
  $packagenameprefix    = $::bind::params::packagenameprefix,
  $named_checkzone_path = '/usr/sbin/named-checkzone',
) inherits ::bind::params {

  class { '::bind':
    chroot            => $chroot,
    packagenameprefix => $packagenameprefix,
  }

}
