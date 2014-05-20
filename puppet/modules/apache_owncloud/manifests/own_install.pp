# Class: apache_owncloud::own_install
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
class apache_owncloud::own_install {

      package { owncloud:
                ensure    => present,
                require   => Class["apache_owncloud::apt"],
      }

      


}
