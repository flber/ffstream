#!/bin/bash

while true
do
	echo Parsed_hue_1 h $hue | ./zmqsend &> /dev/null
	sleep 1
done
