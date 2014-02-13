# == Class: postfixadmin
#
# Full description of class postfixadmin here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class postfixadmin (
) inherits postfixadmin::params {

  # validate parameters here

  class { 'postfixadmin::install': } ->
  class { 'postfixadmin::config': } ~>
  class { 'postfixadmin::service': } ->
  Class['postfixadmin']
}
