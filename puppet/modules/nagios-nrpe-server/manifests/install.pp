class nagios-nrpe-server::install {
	package {"nagios-nrpe-server" :
	ensure => present,
#	require => User["nagios"],
}

#user {"nagios" :
#	ensure => present,
#	comment => "Nagios server user",
#	gid => "nagios",
#	shell => "/bin/bash",
#	require => Group["nagios"],
#}

#group {"nagios" :
#	ensure => present,
#}
}
