node 'mgmt'{
	package { 'vim': ensure => present }
	package { 'tree': ensure => present }
	include mc
	include nagios
}

node 'db'{
	package { 'vim': ensure => present }
	package { 'tree': ensure => present }
	include sudo	
	include hosts_file
	include mysql
	include nagios-nrpe-server
	include mc
}

node 'app'{
        package { 'vim': ensure => present }
        package { 'tree': ensure => present }
	include sudo
        include hosts_file
	include nagios-nrpe-server
	include mc
}

node 'backup'{
        package { 'vim': ensure => present }
        package { 'tree': ensure => present }
	include sudo
        include hosts_file
	include nagios-nrpe-server
	include mc
}

node 'ad'{
        include hosts_file
	include nsclient
}

