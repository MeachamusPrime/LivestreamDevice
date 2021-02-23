# LivestreamDevice
Raspberry Pi Kiosk for non-interactive Livestream viewing

# Install Raspian OS
Download the Pi installer from [https://www.raspberrypi.org/software/](https://www.raspberrypi.org/software/)
Install Raspberry Pi (32-bit for 3B+, 64-bit for later versions) on a 4GB or larger SD Card

# Boot Livestream Device
Boot your Raspberry Pi 3B+ or later with the SD Card inserted
Setup your WiFi or connect a wired ethernet cable

# Set Resolution
1. Set Resolution to 1280x720 (or other resolution if that fails)
   * You may be able to get 1920x1080 to play smoothly on a Raspberry Pi 4 or later
1. Open the Pi menu in the top left of the desktop
1. Preferences -> Rapberry Pi Configuration
1. Display Tab -> Set Resolution...
1. Choose "CEA mode 4 1280x720 60Hz 16:9"
1. OK -> OK

# Set Background Picture
1. Open the Pi menu in the top left of the desktop
1. Preferences -> Appearance Settings
1. Desktop Tab -> Picture
1. Select your chosen background
   * In the case of WestHSV CofC ==> /home/pi/Pictures/WestHuntsville.png
1. Open
1. Uncheck Wastebasket
1. Uncheck Mounted Disks

# Install Support Software
Ensure that xdotool and unclutter are installed
1. Click the ">_" icon next to the Pi menu in the top left of the desktop
1. Type the following:
   * sudo apt-get install xdotool unclutter
   * y
   * exit

# Set Chromium to Allow Video Streaming
1. Go into Chromium settings
1. Privacy settings
1. Site Settings
1. Set your streaming site to allow audio to autoplay
   * In the case of WestHSV CofC ==> livestream.com
1. On startup
1. Open a specific page
1. Add a new page
1. Enter your website
   * In the case of WestHSV CofC ==> https://westhuntsville.org
1. Add
1. Add a new page
1. file:///home/pi/temp.html
1. Add

