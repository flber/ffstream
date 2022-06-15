#!/bin/bash

read level

if (( "$level" > "6000" )); then
	echo "1"
else
	echo "0"
fi
