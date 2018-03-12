#!/bin/bash


if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    echo "Usage: $0 [ hdmi1 | hdmi2 | hdmi3 | hdmi4 | as ]"
    exit 1
fi


if [ $1 == 'hdmi1' ]
  then
    echo "TV::Input: [ $1 ]"
    #HDMI1
    echo "tx  1f:82:10:00" | cec-client -s -d 1
elif [ $1 == 'hdmi2' ]
  then
    echo "TV::Input: [ $1 ]"
    #HDMI2
    echo "tx  1f:82:20:00" | cec-client -s -d 1
elif [ $1 == 'hdmi3' ]
  then
    echo "TV::Input: [ $1 ]"
    #HDMI3
    echo "tx  1f:82:30:00" | cec-client -s -d 1
elif [ $1 == 'hdmi4' ]
  then
    echo "TV::Input: [ $1 ]"
    #HDMI4
    echo "tx  1f:82:40:00" | cec-client -s -d 1
elif [ $1 == 'as' ]
  then
    echo "TV::Input: [ $1 ]"
    #AS
    echo "as" | cec-client -s -d 1
else
    echo "Wrong Input : [ $1]"
fi
