# Class: nagios
#
# This module manages Nagios3 
#

class nagios {
	include nagios::install, nagios::config, nagios::service, nagios::resources
}
