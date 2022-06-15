#!/bin/bash

./ffmpeg-webcam-fast-filter.sh "/dev/video2" "filter.txt" | ./mpv-fast.sh
