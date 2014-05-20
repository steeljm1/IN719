# Class: apache_owncloud::apt
#
# This module manages apache_owncloud
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class apache_owncloud::apt {

      file { '/root/apt.sh':
              ensure => present,
              owner => 'root',
              group => 'root',
              mode => '0774',
              source => 'puppet:///modules/apache_owncloud/apt.sh',
      }

      exec { '/root/apt.sh':  
              require => File['/root/apt.sh'] ,
              notify  => Class["apache_owncloud::own_install"], 
      }

}
