#!/bin/bash

echo "Performance stats for $USER"

cnt=`ps -ef | wc -l`

echo "There are $cnt processes running"
echo "$1 is the limit"

if [ "$cnt" -gt "$1" ]
 then
  echo "limit exceeded"
fi
