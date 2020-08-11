#!/bin/sh

meteorfile="/datadrive/meteor/data_*.s"
 
if [ -f $meteorfile ]
then
        echo `date +%F" "%T`" Meteor file exists" >> /home/pi/freqset.txt
        /usr/bin/python /datadrive/process_meteor.py &
fi
