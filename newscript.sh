#!/bin/bash

cpu=`more /proc/cpuinfo | grep processor | wc -l`

echo "Number of processors = $cpu"
