#!/bin/bash

#
#	This script starts N TF2 instances, 6 by default
#

max=6

if [ "$#" == 1 ]; then
	max=$1
fi

for i in $(seq 1 $max)
do
	echo "Starting Team Fortress 2 for catbot $i"
	sudo -H -u catbot-$i bash -c 'steam -applaunch 440 -sw -textmode -novid -nojoy -nosound -noshaderapi -norebuildaudio -nomouse -nomessagebox -nominidumps -nohltv -nobreakpad &>/dev/null &'
done

echo "[WARNING] Please, wait at least 30 seconds (or a minute) before injecting!"