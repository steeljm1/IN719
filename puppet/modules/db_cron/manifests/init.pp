class db_cron {

	file { "/etc/crontab":
	owner   => "root",
        group   => "root",
	mode => 0644,
	source => "puppet:///modules/db_cron/crontab",
	}
}
