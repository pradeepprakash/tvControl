#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    echo "Usage: $0 [ power_on | power_off ]"
    exit 1
fi


if [ $1 == 'ON' ]|| [ $1 == 'On' ] || [ $1 == 'on' ] || [ $1 == 'power_on' ]
  then
    echo "TV : [ ON ]"
    echo "on 0" | cec-client  -s -d 1
elif [ $1 == 'OFF' ] || [ $1 == 'Off' ] || [ $1 == 'off' ] || [ $1 == 'power_off' ]
  then
    echo "TV : [ OFF ]"
    echo "standby 0" | cec-client -s -d 1
else
    echo "Wrong Input : [ $1]"
fi



