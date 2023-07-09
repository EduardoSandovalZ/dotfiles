#!/bin/bash

eth0_ip=$(ifconfig eth0 | awk '/inet /{print $2}')
wlan0_ip=$(ifconfig wlan0 | awk '/inet /{print $2}')

if [[ -n "$eth0_ip" ]]; then
    echo " $eth0_ip"
else
    echo " $wlan0_ip"
fi
