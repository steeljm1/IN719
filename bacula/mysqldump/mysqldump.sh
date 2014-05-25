#!/bin/bash

TIMESTAMP=$(date +"%F")
BACKUP_DIR="/root/bacula/$TIMESTAMP"
MYSQL_USER="root"
MYSQL_PASSWORD="XXXXXXXXXX"
MYSQL=/usr/bin/mysql
MYSQLDUMP=/usr/bin/mysqldump

mkdir -p $BACKUP_DIR

databases=`$MYSQL -u$MYSQL_USER -p$MYSQL_PASSWORD -e "SHOW DATABASES;" | grep -Ev "(Database|information_schema)"`

for db in $databases; do
echo $db
$MYSQLDUMP --force --opt --user=$MYSQL_USER -p$MYSQL_PASSWORD --databases $db | gzip > "$BACKUP_DIR/$db.gz"
done
