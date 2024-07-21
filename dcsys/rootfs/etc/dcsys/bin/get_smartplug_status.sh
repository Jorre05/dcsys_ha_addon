#!/bin/bash
. /etc/dcsys/bin/rrd_env.sh
while true ; do
	STATUS=`wget -q -O - --timeout 5 "http://plug$1.struyve.local/cm?cmnd=Power"`
	if [ $? -gt 0 ]; then
		#echo niets
		STATUS=OFF
	else
		STATUS=`echo $STATUS|sed -e 's/[{}]/''/g'|sed -e 's/\"//g'|awk -F ':' '{print $2}'`
	fi
	#echo "$1 is $STATUS"
	if [ $STATUS = "OFF" ]; then
		getdcsysval SET v $2 0
	elif [ $STATUS = "ON" ]; then
		getdcsysval SET v $2 1
	fi
	sleep 5
done

