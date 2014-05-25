# Class: owncloud
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
class owncloud {

    include owncloud::apt, owncloud::install, owncloud::config, owncloud::service

}
