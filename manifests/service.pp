# == Class: postgresql::service
#
# Controls the postgresql service
class postgresql::service {
  $ensure = $postgresql::start ? {true => running, default => stopped}

  service { 'postgresql':
    ensure => $ensure,
    enable => $postgresql::enable,
  }
}
