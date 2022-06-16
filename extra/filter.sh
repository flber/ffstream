#!/bin/bash

./ffmpeg-webcam-fast-filter.sh "/dev/video2" "$1" | ./mpv-fast.sh
