node 'mgmt'{
	package { 'vim': ensure => present }
	package { 'tree': ensure => present }
	package { 'ruby-shadow': ensure => present }
	include mc
	include nagios
	include nix_bacula_client
	include hosts_file
	include sudo
	include users	
}

node 'db'{
	package { 'ruby-shadow': ensure => present }
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
	package { 'ruby-shadow': ensure => present }
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
	package { 'ruby-shadow': ensure => present }
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

