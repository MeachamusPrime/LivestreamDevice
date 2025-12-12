# LivestreamDevice
Raspberry Pi Kiosk for non-interactive Livestream viewing

## Install Raspian OS
1. Download the Pi installer from [https://www.raspberrypi.org/software/](https://www.raspberrypi.org/software/)
1. Install Raspberry Pi (32-bit for 3B+, 64-bit for later versions) on a 4GB or larger SD Card

## Boot Livestream Device
1. Boot your Raspberry Pi 3B+ or later with the SD Card inserted
1. Setup your WiFi or connect a wired ethernet cable
1. Click the ">_" icon next to the Pi menu in the top left of the desktop
2. Run "sudo raspi-config"
3. Choose "Advanced Options"
4. Choose "Wayland"
5. Choose "X11"
6. Exit the program by pressing escape until it exits

## Set Resolution
1. Set Resolution to 1280x720 (or other resolution if that fails)
   * You may be able to get 1920x1080 to play smoothly on a Raspberry Pi 4 or later, but make sure to change the mousemove locations in CheckForRefresh.sh
1. Open the Pi menu in the top left of the desktop
1. Preferences -> Control Center
1. Screens -> Screens -> HDMI-1 -> Resolution -> 1280x720
1. Apply -> Close

## Set Background Picture
1. Open the Pi menu in the top left of the desktop
1. Preferences -> Control Center
1. Desktop -> Picture
1. Select your chosen background
   * In the case of WestHSV CofC ==> /home/pi/Pictures/WestHuntsville.png
1. Open
1. Uncheck Wastebasket
1. Uncheck Mounted Disks
1. Close

## Install Support Software
Ensure that xdotool and unclutter are installed
1. Click the ">_" icon next to the Pi menu in the top left of the desktop
1. Type the following:
   * sudo apt-get install xdotool unclutter
   * y
   * exit

## Set Chromium to Allow Video Streaming
1. Go into Chromium settings
1. Privacy settings
1. Site Settings
1. Set your streaming site to allow audio to autoplay
   * In the case of WestHSV CofC ==> vimeo.com
1. On startup
1. Open a specific page
1. Add a new page
1. Enter your website
   * In the case of WestHSV CofC ==> https://westhuntsville.org
1. Add

## Modify for Your Livestream
If you are not building for WestHSV CofC, modify the livestream link in `StartLivestream.sh` on the last line to your indirect livestream link.
*  Alternatively, if you do not host an indirect link to your livestream, you can comment out the last line in `StartLivestream.sh` and uncomment the second to last line and change the link inside `temp.html` to your direct link.

