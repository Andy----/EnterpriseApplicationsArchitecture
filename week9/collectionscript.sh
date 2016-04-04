#!/bin/bash
# $1
# $2
# $3

if [ ! -d $3 ]
then
 echo "Dir doesn't exist"
 exit
fi

mpstat $1 $2 > $3/cpu.dat
