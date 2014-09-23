# == Class: postgresql::install
#
# Installs the postgresql package
class postgresql::install {
  package { 'postgresql':
    ensure => $postgresql::version,
  }
}
