#!/bin/bash
if [ "$USER" != "eaauser" ]; then
        echo 'Access Denied'
        exit 1
fi

if [ -d "$HOME/logs" ] && [ -w "$HOME/logs" ]; then
	echo "Diary file found and is writable"
	read var
	echo $(date) $var >> $HOME/logs/diary.txt
fi


