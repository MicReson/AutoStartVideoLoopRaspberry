#!/bin/bash

echo "Starting dependency installation..."

# Write User name
user_name=""

sudo apt-get update
sudo apt-get install -y vlc
sudo apt-get install -y pulseaudio

mkdir -p /home/$user_name/Documents/AutoStartVideo
mkdir -p /home/$user_name/.config/systemd/user

mv ./AutoStartVLC.sh /home/$user_name/Documents/AutoStartVideo
mv ./VideoPlayback.service ~/.config/systemd/user

echo "Setup Completed complete!"
