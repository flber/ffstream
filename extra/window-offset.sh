#!/bin/bash

if [ $# -ne 1 ]; then
	echo "usage: window-offset.sh [window name substr]"
else
	echo $(wmctrl -lG | awk "\$8 ~\"$1\" {printf(\":0.0+%d,%d\", \$3, \$4)}")
fi
