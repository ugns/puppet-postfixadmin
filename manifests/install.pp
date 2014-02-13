# == Class postfixadmin::install
#
class postfixadmin::install {
  include postfixadmin::params

  package { $postfixadmin::params::package_name:
    ensure => present,
  }
}
