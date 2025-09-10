#!/bin/bash

pathToFile="./LoopVideo.mp4"

vlc --alsa-audio-device hw:0,0 --fullscreen --no-osd --loop --mouse-hide-timeout 0 $pathToFile
