#!/bin/bash


if [ "$1" == "restore" ]; then
# Perform a restore if restore flag provided
        echo "Restore in progress"
	if [ ! -d "/home/eaauser/restore"  ] && [ -w "/home/eaauser"  ];
	then
		echo "Restore dir not found. Creating now"
		mkdir "/home/eaauser/restore"
	fi
	tar -xf "/home/eaauser/backups/week4.tar.gz" -C "/home/eaauser/restore"
else
# Perform a backup if restore flag not found
echo "Backup in progress"
if [ ! -d "/home/eaauser/backups"  ] && [ -w "/home/eaauser"  ];
then
	echo "Directory doesn't exist. Creating directory"
	mkdir "/home/eaauser/backups"
fi

cd "/home/eaauser/Documents/EnterpriseApplicationsArchitecture"
tar -zcvf "/home/eaauser/backups/week4.tar.gz" "week4"

fi
