#!/bin/bash

#invoke the load test woth appropriate parameters
#sleep for the duration of the load test T
#pkill the load test

./loadtest $1 &

sleep $2

pkill loadtest
