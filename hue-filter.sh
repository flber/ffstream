#!/bin/bash

./ffmpeg-webcam-fast-filter.sh "/dev/video2" "hue-filter.txt" | ./mpv-fast.sh
