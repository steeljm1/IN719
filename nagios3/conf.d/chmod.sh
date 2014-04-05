#!/bin/bash

cd /etc/nagios3/conf.d/

find . -type f -exec chmod 644 {} \;
