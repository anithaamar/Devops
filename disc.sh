#!/bin/bash
free='df -h | tail -1 | awk -F " " '{print $(NF-1)}' | sed 's/%/ g''
if [ $free -gt 90 ]
	echo " diskstorage greater than 90%" | mail -s " disk overloaded" -c abc @gmail.com
fi
