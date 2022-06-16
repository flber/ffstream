#!/bin/bash

while true
do
	if [[ $(./audio.py 2>/dev/null) > "4000" ]]; then
		echo Parsed_overlay_5 x "10" | ./zmqsend &> /dev/null
		echo "talking"
	else
		echo Parsed_overlay_5 x "-100" | ./zmqsend &> /dev/null
		echo "..."
	fi
done

