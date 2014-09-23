# == Class: postgresql
#
# A module to install postgresql
#
# === Parameters
# ["version"]
#   The package version to install
#
# ["enable"]
#   Should the service be enabled during boot time?
#
# ["start"]
#   Should the service be started by Puppet

class postgresql (
  $version = 'present',
  $enable = true,
  $start = true
  )  {
    class{'postgresql::install': } ->
    class{'postgresql::configure': } ~>
    class{'postgresql::service': } ->
    Class['postgresql']
  }
