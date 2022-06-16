#!/bin/bash

if [ $# -ne 1 ]; then
	echo "usage: window-dimensions.sh [window name substr]"
else
	dimensions=$(wmctrl -lG | awk "\$8 ~\"$1\" {printf(\"%d %d\", \$5, \$6)}")
	x=$(echo $dimensions | awk '{ print $1 }')
	y=$(echo $dimensions | awk '{ print $2 }')
	x=$(($x - 2))
	y=$(($y - 2))
	echo "${x}x${y}"
fi
