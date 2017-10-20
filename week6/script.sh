#!/bin/bash 

wordcount=`aws ec2 describe-instance-status --instance-id $1 | wc -l`

if [ $# -lt 1 ]; then
        echo "No instance was entered"
else
	if [ $wordcount -eq 3 ]; then
		echo "The instance is not running"
	elif aws ec2 describe-instance-status --instance-id $1; then
                echo "The instance is running"
        else
		echo "no such instance running"
        fi
fi

