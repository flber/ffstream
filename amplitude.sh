#!/bin/bash

arecord -qd 1 volt && sox volt -n stat &> volt.d && sed '4q;d' volt.d | grep "ampli
tude" | awk '{ print $3 }'
rm volt*
