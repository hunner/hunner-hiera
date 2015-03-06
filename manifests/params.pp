# == Class: hiera::params
#
# This class handles OS-specific configuration of the hiera module.  It
# looks for variables in top scope (probably from an ENC such as Dashboard).  If
# the variable doesn't exist in top scope, it falls back to a hard coded default
# value.
#
# === Authors:
#
# Mike Arnold <mike@razorsedge.org>
#
# === Copyright:
#
# Copyright (C) 2013 Mike Arnold, unless otherwise noted.
#
class hiera::params {
  if $::puppetversion =~ /Puppet Enterprise/ {
    $hiera_yaml = '/etc/puppetlabs/puppet/hiera.yaml'
    $datadir    = '/etc/puppetlabs/puppet/hieradata'
    $owner      = 'pe-puppet'
    $group      = 'pe-puppet'
    $confdir    = '/etc/puppetlabs/puppet'
    if $::puppetversion =~ /3.7/ {
      $provider = 'pe_puppetserver_gem'
      # 3.7 also needs /opt/puppet/bin/eyaml
      exec { 'install pe_gem':
          command => '/opt/puppet/bin/gem install hiera-eyaml',
          creates => '/opt/puppet/bin/eyaml',
      }
    } else {
      $provider = 'pe_gem'
    }
  } else {
    $hiera_yaml = '/etc/puppet/hiera.yaml'
    $datadir    = '/etc/puppet/hieradata'
    $owner      = 'puppet'
    $group      = 'puppet'
    $provider   = 'gem'
    $confdir    = '/etc/puppet'
  }
}
