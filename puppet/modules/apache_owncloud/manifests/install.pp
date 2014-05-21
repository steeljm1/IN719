# Class: apache_owncloud::install
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
class apache_owncloud::install {
      
      # install required packages 
      $prereqisites = ["apache2", "php5", "php5-gd", "php-xml-parser", "php5-intl", "php5-ldap"]
      
      package { $prereqisites :
        ensure    => present,
        require   => Exec['apt-get update'],
      }
      
      $opt_prereqisites = ["php5-mysql", "curl", "libcurl3", "php5-curl"]

      package { $opt_prereqisites :
        ensure  => present,
      }
      
      exec { 'apt-get update':
      }

}
