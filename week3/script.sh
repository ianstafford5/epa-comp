#!/bin/bash

# this is a cpu counting script

cnt=`grep processor /proc/cpuinfo | wc -l`

if [ $cnt -le 2 ]; then
#some action
echo  "Too few CPUs, exiting"
fi
