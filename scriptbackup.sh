#!/bin/bash

dateformat=$(date "+%Y-%m-%d___%H-%M-%S")
#final_archive="backup-$date_format.tar.gz"


#logs
log_file=/var/log/hourly-backups.log


#Backup the files using tar

tar cvzf /root/backupfolder/Backup-$dateformat.tar.gz /etc/sysconfig /etc/hosts/ /etc/fstab/ /etc/rc*
        echo ~~~Backup completed $dateformat ~~~ >> $log_file


#delete old backups

find /root/backupfolder -mtime +3 -delete
