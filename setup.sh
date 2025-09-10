#!/bin/bash

echo "Starting dependency installation..."

sudo apt-get update
sudo apt-get install -y vlc

sudo mkdir ~/Documents/AutoStartVideo
sudo mkdir ~/.config/AutoPlayLoopVideo

sudo mv ./AutoStartVLC.sh ~/Documents/AutoStartVideo
sudo mv ./VideoPlayback.desktop ~/.config/AutoPlayLoopVideo

echo "Setup Completed complete!"