# Class: apache_owncloud::service
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
class apache_owncloud::service {
  
      service { "apache2" :
                  ensure      => running,
                  hasstatus   => true,
                  hasrestart  => true,
                  enable      => true,
                  require     => Class["apache_owncloud::config"],
                  notify      => Class["apache_owncloud::apt"]
      }

}
