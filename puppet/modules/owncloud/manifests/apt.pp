# Class: owncloud::apt
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
class owncloud::apt {

      # push the script to client
      file { '/root/apt.sh':
              ensure  => present,
              owner   => 'root',
              group   => 'root',
              mode    =>  0770,
              source  => 'puppet:///modules/owncloud/apt.sh',
      }

      # execute the script once it has been copied to client
      exec { '/root/apt.sh':
                command =>  "/bin/bash /root/apt.sh",
                require   => File["/root/apt.sh"],
                notify    => Class["owncloud::install"],
      }

}
