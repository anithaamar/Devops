#!/bin/bash
idle=(top -bn1 | grep "CPU(s)" | awk '{print $8}' | cut -d. -f1 )
utilised=$((100-idle))
if [ $utilised -gt 90 ]
then
	echo "not ok"
else
	echo "ok"
fi

