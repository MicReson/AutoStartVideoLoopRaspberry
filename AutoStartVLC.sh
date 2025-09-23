#!/bin/bash

# Set user name
user_name=""

# Here you need to add the absolute path
pathToFile="/home/$user_name/Documents/AutoStartVideo/LoopVideo.mp4"

cvlc --fullscreen --no-osd --loop --mouse-hide-timeout 0 --aout pulse $pathToFile
