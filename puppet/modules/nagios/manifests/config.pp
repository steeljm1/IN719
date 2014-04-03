class nagios::config {

	file {"/etc/nagios3/htpasswd.users":
		ensure 		=> present,
		owner 		=> "root" ,
		group 		=> "root",
		mode 		=> 0644,
		source 		=> "puppet:///modules/nagios/etc/htpasswd.users",
		require 	=> Class["nagios::install"],
		notify 		=> Class["nagios::service"],
#		notify          => Class["nagios::resources"],
	}

	file {"/etc/nagios3/nagios.cfg":
		ensure 		=> present, 
		owner 		=> "root" ,
		group 		=> "root",
		mode 		=> 0644,
		source 		=> "puppet:///modules/nagios/etc/nagios.cfg",
		require 	=> Class["nagios::install"],
#		notify          => Class["nagios::resources"],
		notify 		=> Class["nagios::service"],
	}
}
