#!/bin/bash

while [[ 1=1 ]]; do
	#BROWSER_RUNNING=`ps -ef | grep [c]hromium`
	BROWSER_RUNNING=`ps -ef | grep [f]irefox`

	if [[ -z `echo -n $BROWSER_RUNNING` ]]; then
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
			# +30 from left border, -20 from bottom border (This is the common location for the play button)
			#xdotool mousemove 30 700
			#xdotool click 1
			xdotool key F5
			sleep 5
		fi
	elif [[ $WIFI_RESULT -lt 500000 ]]; then
		if [[ $WIRED_RESULT -lt 500000 ]]; then
			# +30 from left border, -20 from bottom border (This is the common location for the play button)
			#xdotool mousemove 30 700
			#xdotool click 1
			xdotool key F5
			sleep 5
		fi
	else
		sleep 60
	fi

done
