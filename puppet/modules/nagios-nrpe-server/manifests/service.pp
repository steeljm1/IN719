class nagios-nrpe-server::service {

	service { "nagios-nrpe-server" :
		ensure 		=> running,
		hasstatus 	=> true,
		hasrestart 	=> true,
		enable 		=> true,
		require 	=> Class["nagios-nrpe-server::config"],
	}
}
