class nagios::chmod {
	
	file { '/etc/nagios3/conf.d/chmod.sh':
		ensure => present,
		owner => 'root',
		group => 'root',
		mode => '0774',
		source => 'puppet:///modules/nagios/etc/chmod.sh',
	}

	exec { '/etc/nagios3/conf.d/chmod.sh':
#		command	=> "/bin/bash /etc/nagios3/conf.d/chmod.sh:,  
		require => File['/etc/nagios3/conf.d/chmod.sh'] ,
		notify	=> Class["nagios::service"], 
	}
}


