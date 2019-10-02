#!/bin/bash

function get_kid_pids() {
for ps in $*; do
	echo $ps
	next=$(pgrep -P $ps)
	if [ $? == 0 ]; then
	        get_kid_pids $next
	fi
done
}

get_kid_pids $1
