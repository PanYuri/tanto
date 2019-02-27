#!/bin/bash
###########
#
# Get Kali Isometric Wallpaper & Lock Screen Script
# (c) Thom Hastings 2018
# BSD 3-clause License
# tested Kali 2018.2
#
###########
echo "Get Kali Isometric Wallpaper & Lock Screen:\n"
echo "Downloading..."
cd ~/Pictures
wget https://orig00.deviantart.net/b01d/f/2017/363/6/1/isometric_kali_dragon_by_xxdigipxx-dbyaw60.png
wget https://orig00.deviantart.net/0ba1/f/2017/363/3/5/isometric_kali_dragon_lockscreen_by_xxdigipxx-dbyaw8g.png
echo "Setting GNOME Wallpaper..."
gsettings set org.gnome.desktop.background picture-uri file:////root/Pictures/isometric_kali_dragon_by_xxdigipxx-dbyaw60.png
echo "Setting GNOME Lock Screen..."
gsettings set org.gnome.desktop.screensaver picture-uri file:////root/Pictures/isometric_kali_dragon_lockscreen_by_xxdigipxx-dbyaw8g.png
echo "Done!"
