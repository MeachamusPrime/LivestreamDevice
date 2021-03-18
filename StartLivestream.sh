#!/bin/bash
pkill chromium-browser
#sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' /home/pi/.config/chromium/Default/Preferences
#sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/pi/.config/chromium/Default/Preferences
sleep 15
#/usr/bin/chromium-browser --noerrdialogs --disable-infobars --kiosk file:///home/pi/temp.html --autoplay-policy=no-user-gesture-required --disable-features=PreloadMediaEngagementData,AutoplayIgnoreWebAudio,MediaEngagementBypassAutoplayPolicies &
/usr/bin/chromium-browser --noerrdialogs --disable-infobars --kiosk https://westhuntsville.org/stream --autoplay-policy=no-user-gesture-required --disable-features=PreloadMediaEngagementData,AutoplayIgnoreWebAudio,MediaEngagementBypassAutoplayPolicies &
