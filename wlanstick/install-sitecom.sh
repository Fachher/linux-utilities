#!/bin/bash

echo 'install 8188eu /sbin/modprobe --ignore-install 8188eu; /bin/echo "0df6 0076" > /sys/bus/usb/drivers/rtl8188eu/new_id' |  tee /etc/modprobe.d/8188eu.conf

modprobe -v 8188eu
cp 10-wlan-stick.rules /etc/udev/rules.d/
