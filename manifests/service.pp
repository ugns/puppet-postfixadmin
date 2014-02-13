# == Class postfixadmin::service
#
# This class is meant to be called from postfixadmin
# It ensure the service is running
#
class postfixadmin::service {
  include postfixadmin::params

  service { $postfixadmin::params::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
