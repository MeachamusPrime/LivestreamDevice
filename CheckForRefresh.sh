#!/bin/bash

while [[ 1=1 ]]; do
	CHROMIUM_RUNNING=`ps -ef | grep [c]hromium-browser`

	if [[ -z `echo -n $CHROMIUM_RUNNING` ]]; then
		/home/pi/StartLivestream.sh
		sleep 15
	fi

	FIRST_WIRED_CHECK=`cat /sys/class/net/eth0/statistics/rx_bytes`
	FIRST_WIFI_CHECK=`cat /sys/class/net/wlan0/statistics/rx_bytes`
	sleep 15
	SECOND_WIRED_CHECK=`cat /sys/class/net/eth0/statistics/rx_bytes`
	SECOND_WIFI_CHECK=`cat /sys/class/net/wlan0/statistics/rx_bytes`

	WIRED_RESULT=$(($SECOND_WIRED_CHECK - $FIRST_WIRED_CHECK))
	WIFI_RESULT=$(($SECOND_WIFI_CHECK - $FIRST_WIFI_CHECK))

	if [[ $WIRED_RESULT -lt 500000 ]]; then
		if [[ $WIFI_RESULT -lt 500000 ]]; then
			xdotool mousemove 384 216
			xdotool click 1
			sleep 5
		fi
	elif [[ $WIFI_RESULT -lt 500000 ]]; then
		if [[ $WIRED_RESULT -lt 500000 ]]; then
			xdotool mousemove 384 216
			xdotool click 1
			sleep 5
		fi
	else
		sleep 60
	fi

done