#!/bin/bash

if [ "$USER" != "eaauser" ]; then
	echo 'Access Denied'
	exit 1
fi
totalCnt=`ps -ef | wc -l`
rootCnt=`ps -U root | wc -l`

nonRoot=`expr $totalCnt - $rootCnt`

if [ "$nonRoot" -gt "$1" ]
 then
  echo $(date) "Max number of non-root ($1) processes exceeded "  >> $HOME/logs/wk2.log
fi

