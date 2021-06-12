#!/bin/bash
#macadd=$( ip -brief add | awk '/UP/ {print $1}' | sort | head -1 )
#"if [ ! -z "${macadd}" ]
#then
#  macadd=$( sed 's/://g' /sys/class/net/${macadd}/address )
#  sed "s/raspberrypi/${macadd}/g" -i /etc/hostname /etc/hosts
#fi
#/sbin/shutdown -r 5 "reboot in five minutes"
sed "s/raspberrypi/pi0/g" -i /etc/hostname /etc/hosts
sudo wget http://downloads.fars-robotics.net/wifi-drivers/install-wifi -O /usr/bin/install-wifi
sudo chmod +x /usr/bin/install-wifi
sudo /usr/bin/install-wifi

