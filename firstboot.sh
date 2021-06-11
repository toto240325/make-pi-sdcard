#!/bin/bash
settings_file="make-pi-sdcard.ini"
#macadd=$( ip -brief add | awk '/UP/ {print $1}' | sort | head -1 )
if [ ! -z "${macadd}" ]
then
  macadd=$( sed 's/://g' /sys/class/net/${macadd}/address )
  sed "s/raspberrypi/${macadd}/g" -i /etc/hostname /etc/hosts
fi
sed "s/raspberrypi/${myhostname}/g" -i /etc/hostname /etc/hosts
/sbin/shutdown -r 5 "reboot in five minutes"
