#!/bin/bash


function text() {
	text_string=":fontcolor=white:fontsize=60:box=1:boxcolor=black:boxborderw=8:x=(w-text_w)/2:y=(h-text_h)/2"
	echo "text='$1'${text_string}"
}

while true
do
	# hue=$((1 + $RANDOM % 359))
	# echo Parsed_hue_1 h $hue | ./zmqsend &> /dev/null
	# hue_text="text='${hue}'${text_string}"
	# echo Parsed_drawtext_2 reinit $hue_text | ./zmqsend &> /dev/null
	talking=""
	if (( $(./audio.py 2>/dev/null | ./level-check.sh) )); then
		talking="TALKING"
	else
		talking="..."
	fi
	# talking=$(./audio.py 2>/dev/null )
	echo Parsed_drawtext_2 reinit $(text $talking) | ./zmqsend &> /dev/null
	# sleep 1
done
