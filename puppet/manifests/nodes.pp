node 'mgmt'{
	package { 'vim': ensure => present }
	package { 'tree': ensure => present }
	include mc
	include nagios
	include nix_bacula_client
	include hosts_file
	include sudo
	include users	
}

node 'db'{
	include users
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
	include users
        package { 'vim': ensure => present }
        package { 'tree': ensure => present }
	include sudo
        include hosts_file
	include nagios-nrpe-server
	include mc
	include nix_bacula_client
	include apache_owncloud
#	include owncloud
}

node 'backup'{
	include users
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

