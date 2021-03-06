class nagios-nrpe-server::config {
	
	file {"/etc/nagios/nrpe.cfg" :
		ensure 		=> present,
		source 		=> "puppet:///modules/nagios-nrpe-server/etc/nrpe.cfg",
		mode 		=> 0644,
		owner 		=> "root",
		group 		=> "root",
		require 	=> Class["nagios-nrpe-server::install"],
		notify 		=> Class["nagios-nrpe-server::service"],
	}
}
