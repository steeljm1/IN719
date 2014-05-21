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
class apache_owncloud::config {
      
      # push 000-default to client
      file {"/etc/apache2/sites-enabled/000-default":
              ensure    => present,
              owner     => "root" ,
              group     => "root",
              mode      => 0644,
              source    => "puppet:///modules/apache_owncloud/000-default",
              require   => Class["apache_owncloud::install"],
              
      }

      # install apache modules: a2enmod rewrite and a2enmod headers then restart service
      define apache_owncloud::loadmodule () {
                             
          exec { "/usr/sbin/a2enmod $name" :
                unless    => "/bin/readlink -e /etc/apache2/mods-enabled/${name}.load",
                notify    => Class["apache_owncloud::service"],
          }
      }
            
      apache_owncloud::loadmodule{"rewrite": }
      apache_owncloud::loadmodule{"headers": }
      
}
