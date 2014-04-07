#!/bin/bash

#from http://askubuntu.com/questions/174287/how-do-i-convert-an-mp4-to-an-mp3

sudo apt-get insfall ffmpeg

for f in $1*.mp4
do
    name=`echo "$f" | sed -e "s/.mp4$//g"`
    ffmpeg -i "$f" -vn -ar 44100 -ac 2 -ab 192k -f mp3 "$name.mp3"
done
