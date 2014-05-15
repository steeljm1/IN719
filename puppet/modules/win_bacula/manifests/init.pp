# Class: win_bacula
#
# This module manages win_bacula
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class win_bacula {

file {'C:/puppet/bacula-enterprise-win64-6.0.6.exe':
                ensure => file,
                source => 'puppet:///modules/win_bacula/bacula-enterprise-win64-6.0.6.exe',

        }

}

