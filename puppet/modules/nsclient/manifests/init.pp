# Class: nsclient
#
# This module manages nsclient
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class nsclient {

        file {'C:/puppet/NSCP-0.4.1.102-x64.msi':
                ensure   => file,
                source   => 'puppet:///modules/nsclient/NSCP-0.4.1.102-x64.msi',
		notify   => Package['NSClient++ (x64)'],
        }

        package {'NSClient++ (x64)':
                ensure          => installed,
		source          => 'C:\\puppet\\NSCP-0.4.1.102-x64.msi',
		require         => File['C:/puppet/NSCP-0.4.1.102-x64.msi'],
        }




################ SERVICE #####################################################
#
#
       service { 'nscp':
		name	=> 'nscp',
               ensure  => running,
               enable  => true,
               require => Package['NSClient++ (x64)'],
       }
#
       file {'C:/Program Files/NSClient++/nsclient.ini':
               ensure  => 'file',
               source  => 'puppet:///modules/nsclient/nsclient.ini',
               require => Package['NSClient++ (x64)'],
               notify  => Service['nscp'],
         }
}
