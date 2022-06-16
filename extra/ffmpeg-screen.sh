#!/bin/bash

if [ $# -ne 2 ]; then
	echo "usage: ffmpeg-webcam-fast-filter [window title] [filter file]"
else
	dimensions=$(./window-dimensions.sh "$1")
	offset=$(./window-offset.sh "$1")
	./ffmpeg -v error -f x11grab -video_size $dimensions -i $offset -i "$2" -filter_complex_script "$3" -f matroska -r 30 -
fi
