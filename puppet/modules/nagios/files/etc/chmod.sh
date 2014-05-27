#!/bin/bash
# Chmod script to change all files in /etc/nagios3/conf.d/ to 0644
# Written by J.Steele
#
# NOTE: Do NOT change mode or nagios3 will NOT start
#

cd /etc/nagios3/conf.d/

find . -type f -exec chmod 644 {} \;
