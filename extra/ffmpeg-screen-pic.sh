#!/bin/bash

if [ $# -ne 4 ]; then
	echo "usage: ffmpeg-webcam-fast-filter [window title] [image1] [image2] [filter file]"
else
	dimensions=$(./window-dimensions.sh "$1")
	offset=$(./window-offset.sh "$1")
	./ffmpeg -v error -f x11grab -video_size $dimensions -i $offset -loop 1 -i "$2" -loop 1 -i "$3" -filter_complex_script "$4" -f matroska -r 30 -
fi
