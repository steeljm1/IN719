# Class: owncloud::service
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
class owncloud::service {
  
      # Restart apache
      service { "apache2" :
                  ensure      => running,
                  hasstatus   => true,
                  hasrestart  => true,
                  enable      => true,
                  require     => Class["owncloud::config"],
      }

}
