#!/bin/bash
if [ "$USER" != "eaauser" ]; then
	echo 'Access Denied'
	exit 1
fi

#: Description: print Hello and the first command-line argument
printf "Hello $1 you were born in $2 and your favourite colour is $3\n"
