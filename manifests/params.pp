# == Class postfixadmin::params
#
# This class is meant to be called from postfixadmin
# It sets variables according to platform
#
class postfixadmin::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'postfixadmin'
      $service_name = 'postfixadmin'
    }
    'RedHat', 'Amazon': {
      $package_name = 'postfixadmin'
      $service_name = 'postfixadmin'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
