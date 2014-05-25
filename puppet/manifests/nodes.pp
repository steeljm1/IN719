node 'mgmt'{
	package { 'vim': ensure => present }
	package { 'tree': ensure => present }
	include mc
	include nagios
	include nix_bacula_client
	include sudo
	include hosts_file
}

node 'db'{
	package { 'vim': ensure => present }
	package { 'tree': ensure => present }
	include sudo	
	include hosts_file
	include mysql
	include nagios-nrpe-server
	include mc
	include db_cron
        include nix_bacula_client
}

node 'app'{
        package { 'vim': ensure => present }
        package { 'tree': ensure => present }
	include sudo
        include hosts_file
	include nagios-nrpe-server
	include mc
	include nix_bacula_client
}

node 'backup'{
        package { 'vim': ensure => present }
        package { 'tree': ensure => present }
	include sudo
        include hosts_file
	include nagios-nrpe-server
	include mc
	include nix_bacula_client
}

node 'ad'{
        include hosts_file
	include nsclient
	include win_bacula

}

