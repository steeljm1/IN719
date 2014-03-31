class nagios::config {

file {"/etc/nagios3/htpasswd.users":
	ensure => present,
	owner => “nagios" ,
	group => “nagios”,
	mode => 0644,
	source => “puppet:///modules/nagios/etc/htpasswd.users",
	require => Class["nagios::install"],
	notify => Class["nagios::service"],
}
file {"/etc/nagios3/nagios.cfg":
	ensure => present, 
	owner => “nagios” ,
	group => “nagios”,
	mode => 0644,
	source => “puppet:///modules/nagios/etc/nagios.cfg",
	require => Class["nagios::install"],
	notify => Class["nagios::service"],
}
}
