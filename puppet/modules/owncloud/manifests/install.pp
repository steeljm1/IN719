# Class: owncloud::install
#
# This module manages owncloud
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class owncloud::install {
  
      # install owncloud
      package { owncloud:
                ensure    => present,
                require   => Class["owncloud::apt"],
      }

}
