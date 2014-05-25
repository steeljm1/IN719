# Class: apache_owncloud::service
#
# This module manages apache_owncloud
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class apache_owncloud::config {
      
      	# push 000-default to client
      	file {"/etc/apache2/sites-enabled/000-default":
              ensure    	=> present,
              owner     	=> "root" ,
              group     	=> "root",
              mode      	=> 0644,
              source    	=> "puppet:///modules/apache_owncloud/000-default",
              require   	=> Class["apache_owncloud::install"],
              notify      => Class["apache_owncloud::service"],
      	}

	     # create symlink to apache headers module
	     file { "/etc/apache2/mods-enabled/headers.load":
		          ensure 		   => "link",
		          mode         => 0777,
		          target 		   => "/etc/apache2/mods-available/headers.load",
		          require      => Class["apache_owncloud::install"],
              notify       => Class["apache_owncloud::service"],
	     }

	     # create symlink to apache rewrite module
	     file { "/etc/apache2/mods-enabled/rewrite.load":
		          ensure 		   => "link",
		          mode         => 0777,
		          target 		   => "/etc/apache2/mods-available/rewrite.load",
		          require      => Class["apache_owncloud::install"],
		          notify       => Class["apache_owncloud::service"],
	     }
      
}
