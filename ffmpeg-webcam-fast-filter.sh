#!/bin/bash

if [ $# -ne 2 ]; then
	echo "usage: ffmpeg-webcam-fast-filter [webcam path] [filter file]"
else
	res=$(ffprobe -v error -select_streams v:0 -show_entries stream=width,height -of csv=s=x:p=0 "$1")
	./ffmpeg -loglevel debug -video_size "$res" -framerate 30 -i "$1" -c:v rawvideo -filter_complex_script "$2" -f matroska -r 30 -
fi
