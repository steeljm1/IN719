
node 'db'{
	package { 'vim': ensure => present }
	include sudo	
	include hosts_file
	include mysql
}

node 'app'{
        package { 'vim': ensure => present }
        include sudo
        include hosts_file
}

node 'backup'{
        package { 'vim': ensure => present }
        include sudo
        include hosts_file
}

#node 'app'{
#        package { 'vim': ensure => present }
#        include sudo
#        include hosts_file
#}

