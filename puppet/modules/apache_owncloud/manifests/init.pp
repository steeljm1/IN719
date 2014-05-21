# Class: apache_owncloud
#
# This module manages apache_owncloud
#
# Parameters: none
#
# Actions: Install apache2 server then install owncloud
#
# Requires: see Modulefile
#
# Sample Usage:
#
class apache_owncloud {

      include apache_owncloud::install, apache_owncloud::config, apache_owncloud::service#, apache_owncloud::own_install, apache_owncloud::apt, apache_owncloud::own_config

}
