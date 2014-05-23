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
class owncloud::config {

      # push config.php to /var/www/owncloud/config/config.php
      file {"/var/www/owncloud/config/config.php":
              ensure    => present,
              owner     => "www-data" ,
              group     => "www-data",
              mode      => 0640,
              source    => "puppet:///modules/owncloud/config.php",
              require   => Class["owncloud::install"],
              notify      => Class["owncloud::service"]
      }





}
