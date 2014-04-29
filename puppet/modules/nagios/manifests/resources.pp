class nagios::resources {

	nagios_host { 'db.sqrawler.com':
                 target 		=> '/etc/nagios3/conf.d/ppt_hosts.cfg',
		 alias 			=> 'db',
                 address 		=> '10.25.1.26',
                 check_period 		=> '24x7',
                 max_check_attempts 	=> 3,
                 check_command 		=> 'check-host-alive',
                 notification_interval 	=> 30,
                 notification_period 	=> '24x7',
                 notification_options 	=> 'd,u,r',
                 contact_groups 	=> 'sysadmins',
        	 require		=> Class["nagios::install"],
		 notify			=> Class["nagios::chmod"],
   
	}

	nagios_host { 'backup.sqrawler.com':
                 target                 => '/etc/nagios3/conf.d/ppt_hosts.cfg',
                 alias                  => 'backup',
                 address                 => '10.25.1.28',
                 check_period           => '24x7',
                 max_check_attempts     => 3,
                 check_command          => 'check-host-alive',
                 notification_interval  => 30,
                 notification_period    => '24x7',
                 notification_options   => 'd,u,r',
                 contact_groups         => 'sysadmins',
        }

	nagios_host { 'app.sqrawler.com':
                 target                 => '/etc/nagios3/conf.d/ppt_hosts.cfg',
                 alias                  => 'app',
                 address                 => '10.25.1.29',
                 check_period           => '24x7',
                 max_check_attempts     => 3,
                 check_command          => 'check-host-alive',
                 notification_interval  => 30,
                 notification_period    => '24x7',
                 notification_options   => 'd,u,r',
                 contact_groups         => 'sysadmins',                 
        }



 
	 nagios_contactgroup { 'sysadmins':
                target 		=> '/etc/nagios3/conf.d/ppt_contactgroups.cfg',
		alias 		=> 'Systems Administrators',
		members 	=> 'unverzp1, steeljm1',
			
  	}

#	nagios_contact { 'tclark':
#              target 				=> '/etc/nagios3/conf.d/ppt_contacts.cfg',
#              alias 				=> 'Tom Clark',
#              service_notification_period 	=> '24x7',
#              host_notification_period 	=> '24x7',
#              service_notification_options 	=> 'w,u,c,r',
#              host_notification_options 	=> 'd,r',
#              service_notification_commands 	=> 'notify-service-by-email',
#              host_notification_commands 	=> 'notify-host-by-email',
#              email 				=> 'root@localhost',
#  	}

	nagios_contact { 'unverzp1':
              target                            => '/etc/nagios3/conf.d/ppt_contacts.cfg',
	      alias                             => 'Zane Unverferth',
              service_notification_period       => '24x7',
              host_notification_period          => '24x7',
              service_notification_options      => 'w,u,c,r',
              host_notification_options         => 'd,r',
              service_notification_commands     => 'notify-service-by-email,notify-service-by-whatsapp',
              host_notification_commands        => 'notify-host-by-email,notify-host-by-whatsapp',
	      pager				=> '642102270921',
              email                             => 'unverzp1@student.op.ac.nz',
        }

	nagios_contact { 'steeljm1':
              target                            => '/etc/nagios3/conf.d/ppt_contacts.cfg',
	      alias                             => 'Jay Steele',
              service_notification_period       => '24x7',
              host_notification_period          => '24x7',
              service_notification_options      => 'w,u,c,r',
              host_notification_options         => 'd,r',
              service_notification_commands     => 'notify-service-by-email,notify-service-by-whatsapp',
              host_notification_commands        => 'notify-host-by-email,notify-host-by-whatsapp',
	      pager				=> '64211283963',
              email                             => 'steeljm1@student.op.ac.nz',
        }





	nagios_service {'MySQL':
              service_description 	=> 'MySQL DB',
              hostgroup_name 		=> 'db-servers',
              target 			=> '/etc/nagios3/conf.d/ppt_mysql_service.cfg',
	      check_command 		=> 'check_mysql',
              max_check_attempts 	=> 3,
              retry_check_interval 	=> 1,
              normal_check_interval 	=> 5,
              check_period 		=> '24x7',
              notification_interval 	=> 30,
              notification_period 	=> '24x7',
              notification_options 	=> 'w,u,c',
              contact_groups 		=> 'sysadmins',
  	}

	nagios_hostgroup{'db-servers':
		target 		=> '/etc/nagios3/conf.d/ppt_hostgroups.cfg',
		alias 		=> 'Database Servers',
                members		=> 'db.sqrawler.com',
  	}

	nagios_hostgroup{'backup-server':
              target  	=> '/etc/nagios3/conf.d/ppt_hostgroups.cfg',
              alias   	=> 'Backup Server',
              members 	=> 'backup.sqrawler.com',
        }

	nagios_hostgroup{'app-server':
              target    => '/etc/nagios3/conf.d/ppt_hostgroups.cfg',
              alias   	=> 'app Server',
              members   => 'app.sqrawler.com',
        }


}
