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
class owncloud::service inherits apache_owncloud::service {

	class service {
		class{ 'apache_owncloud::service':		
		}
		include owncloud::service
	}  

}
