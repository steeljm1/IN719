class owncloud::apt {

      	# download
	file_line { 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/community/Debian_7.0/ /':
    		path => '/etc/apt/sources.list',
    		line => 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/community/Debian_7.0/ /'
	}

	exec { "wget http://download.opensuse.org/repositories/isv:ownCloud:community/Debian_7.0/Release.key":
    		path => ["/usr/bin", "/usr/sbin"]
	}

	exec {"add-key":
		command => "/usr/bin/apt-key add Release.key",
	}

	exec { "apt-get update":
    		command => "/usr/bin/apt-get update",
    	onlyif => "/bin/sh -c '[ ! -f /var/cache/apt/pkgcache.bin ] || /usr/bin/find /etc/apt/* -cnewer /var/cache/apt/pkgcache.bin | /bin/grep . > /dev/null'",
	}

}
