#!/bin/bash

username=devops
useradd $username

# users=`getent passwd | cut -d: -f1 | sort`

getent passwd devops 2>/dev/null

if [ ! $? -eq 0]
then
	echo "Adding $username"
	useradd $username
end
