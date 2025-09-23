#!/bin/bash

echo "Starting dependency installation..."

# Write User name
user_name=""

sudo apt-get update
sudo apt-get install -y vlc
sudo apt-get install -y pulseaudio

echo "Creating the directories..."

mkdir -p /home/$user_name/Documents/AutoStartVideo
mkdir -p /home/$user_name/.config/systemd/user

echo "Making script and executable..."

chmod 744 ./AutoStartVLC.sh

echo "Moving scripts to required directories..."

mv ./AutoStartVLC.sh /home/$user_name/Documents/AutoStartVideo
mv ./VideoPlayback.service /home/$user_name/.config/systemd/user

echo "Setup Completed complete!"
